package endpoint

import (
	"context"
	"core-api/pkg/entity"
	"core-api/pkg/handler/middleware"
	"core-api/pkg/handler/schema"
	"core-api/pkg/module"
	"errors"
	"fmt"
	"net/http"
	"strings"
	"time"

	"firebase.google.com/go/messaging"
	"github.com/gin-gonic/gin"
	"github.com/google/uuid"
	"gorm.io/gorm"
)

type MeasurementHistoryHandler struct {
	Module                 module.Module
	FirebaseMssagingClient *messaging.Client
}

func (r *MeasurementHistoryHandler) RecordHistory(c *gin.Context) {
	var req schema.RecordHistoryRequest

	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(400, gin.H{"error": err.Error()})
		return
	}
	fmt.Printf("req: %v\n", req)

	dv, err := r.Module.RepositoryModule().DeviceRepository().FindByToken(c, req.DeviceToken)
	if err != nil {
		c.JSON(404, gin.H{"error": err.Error()})
		return
	}

	f, err := r.Module.RepositoryModule().FoodRepository().FindByAccountIdAndNfcUid(c, dv.AccountID, strings.ToLower(req.NfcUid))
	if err != nil {
		c.JSON(404, gin.H{"error": err.Error()})
		return
	}

	if dv.AccountID != f.AccountID {
		c.JSON(403, gin.H{"error": "device and food does not belong to the same account"})
		return
	}

	mhe, err := r.Module.RepositoryModule().MeasurementHistoryRepository().Create(c, &entity.MeasurementHistory{
		FoodID:        f.ID,
		RawWeightGram: req.Weight,
		DeviceID:      &dv.ID,
	})
	if err != nil {
		c.JSON(500, gin.H{"error": err.Error()})
		return
	}

	r.sendPushNotifyIfNeed(c, f, mhe)

	c.JSON(http.StatusOK, schema.MeasurementHistory{
		Id:        mhe.ID,
		FoodId:    f.ID.String(),
		Weight:    mhe.RawWeightGram,
		CreatedAt: mhe.CreatedAt,
	})

}

func (r *MeasurementHistoryHandler) FindHistory(c *gin.Context) {
	aId, err := uuid.Parse(c.GetString(middleware.AccountId))
	if err != nil {
		c.JSON(500, gin.H{"error": err.Error()})
		return
	}
	strFoodId := c.Param("foodId")
	foodId, err := uuid.Parse(strFoodId)
	if err != nil {
		c.JSON(400, gin.H{"error": err.Error()})
		return
	}
	food, err := r.Module.RepositoryModule().FoodRepository().FindByID(c, foodId)
	if err != nil {
		c.JSON(500, gin.H{"error": err.Error()})
		return
	}
	stBegin := c.Query("begin_at")
	stEnd := c.Query("end_at")
	endAt, err := time.Parse(time.RFC3339, stEnd)
	if err != nil {
		c.JSON(400, gin.H{"error": err.Error()})
		return
	}
	beginAt, err := time.Parse(time.RFC3339, stBegin)
	if err != nil {
		c.JSON(400, gin.H{"error": err.Error()})
		return
	}
	histories, err := r.Module.RepositoryModule().MeasurementHistoryRepository().FindByRange(c, foodId, beginAt, endAt)
	if err != nil {
		c.JSON(500, gin.H{"error": err.Error()})
		return
	}

	fmt.Printf("histories count: %v\n", len(histories))

	schemaHistories := make([]*schema.MeasurementHistory, len(histories))
	schemaFood, err := NewUtil(r.Module).CovertToSchemaFood(c, food)
	if err != nil {
		c.JSON(500, gin.H{"error": err.Error()})
		return
	}

	devices, err := r.Module.RepositoryModule().DeviceRepository().FindByAccountID(c, aId)
	if err != nil {
		c.JSON(500, gin.H{"error": err.Error()})
		return
	}
	deviceMap := make(map[uuid.UUID]*entity.Device)
	for _, device := range devices {
		deviceMap[device.ID] = device
	}
	for i, history := range histories {
		schemaHistories[i] = &schema.MeasurementHistory{
			Id:        history.ID,
			FoodId:    food.ID.String(),
			Weight:    history.RawWeightGram,
			CreatedAt: history.CreatedAt,
			Food:      schemaFood,
		}
		if history.DeviceID != nil {
			d := deviceMap[*history.DeviceID]
			dId := history.DeviceID.String()
			schemaHistories[i].DeviceId = &dId
			if d != nil {
				schemaHistories[i].Device = &schema.Device{
					Id:         d.ID.String(),
					MacAddress: d.MacAddress,
					Label:      d.Label,
					CreatedAt:  d.CreatedAt,
					UpdatedAt:  d.UpdatedAt,
				}
			}
		}

	}
	c.JSON(http.StatusOK, schemaHistories)
}

func (r *MeasurementHistoryHandler) CreateHistory(c *gin.Context) {
	var req schema.CreateMeasurementHistoryRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		fmt.Printf("err bind json: %v\n", err)
		c.JSON(400, gin.H{"error": err.Error()})
		return
	}
	aId, err := uuid.Parse(c.GetString(middleware.AccountId))
	if err != nil {
		c.JSON(500, gin.H{"error": err.Error()})
		return
	}

	foodId, err := uuid.Parse(c.Param("foodId"))
	if err != nil {
		fmt.Printf("err parse food id: %v\n", err)
		c.JSON(400, gin.H{"error": err.Error()})
		return
	}

	f, err := r.Module.RepositoryModule().FoodRepository().FindByID(c, foodId)
	if err != nil {
		if errors.Is(err, gorm.ErrRecordNotFound) {
			c.JSON(404, gin.H{"error": err.Error()})
			return
		}
		c.JSON(500, gin.H{"error": err.Error()})
		return
	}

	if f.AccountID != aId {
		c.JSON(403, gin.H{"error": "food does not belong to the account"})
		return
	}

	e := &entity.MeasurementHistory{
		FoodID:        f.ID,
		RawWeightGram: req.Weight,
	}

	if req.RecordAt != nil {
		e.CreatedAt = *req.RecordAt
	}

	record, err := r.Module.RepositoryModule().MeasurementHistoryRepository().Create(c, e)
	if err != nil {
		c.JSON(500, gin.H{"error": err.Error()})
		return
	}

	c.JSON(http.StatusOK, schema.MeasurementHistory{
		Id:        record.ID,
		FoodId:    f.ID.String(),
		Weight:    record.RawWeightGram,
		CreatedAt: record.CreatedAt,
	})
	r.sendPushNotifyIfNeed(c, f, record)

}

func (r *MeasurementHistoryHandler) sendPushNotifyIfNeed(ctx context.Context, food *entity.Food, history *entity.MeasurementHistory) {
	if r.FirebaseMssagingClient == nil {
		fmt.Printf("firebase messaging client is nil\n")
		return
	}

	if food == nil {
		fmt.Printf("food is nil\n")
		return
	}

	a, err := r.Module.RepositoryModule().AccountRepository().FindByID(ctx, food.AccountID)
	if err != nil {
		fmt.Printf("error finding account: %v\n", err)
		return
	}
	tokens, err := r.Module.RepositoryModule().FcmTokenRepostiroy().FindByAccountID(ctx, a.ID)

	if err != nil {
		fmt.Printf("error finding fcm token: %v\n", err)
		return
	}

	food, err = r.Module.RepositoryModule().FoodRepository().FindByID(ctx, food.ID)
	weight := history.RawWeightGram - food.ContainerWeightGram
	if err != nil {
		fmt.Printf("error finding food: %v\n", err)
		return
	}

	// 10%を切ったら通知
	// TODO: 短時間に大量の通知を送信しないような工夫を行う。
	// TODO: DB上に通知済みの履歴を持つなどの工夫が必要かもしれない
	if weight < food.ContainerMaxWeightGram*0.1 {
		for _, token := range tokens {
			result, err := r.FirebaseMssagingClient.Send(ctx, &messaging.Message{
				Token: token.Token,
				Notification: &messaging.Notification{
					Title: fmt.Sprintf("%sが少なくなっています", food.Name),
					Body:  fmt.Sprintf("%sの残量が10%%を下回りました。", food.Name),
				},
			})
			if err != nil {
				fmt.Printf("プッシュ通知の送信に失敗: %v\n", err)
				return
			}
			fmt.Printf("プッシュ通知の送信に成功しました: %v\n", result)
		}

	}

}

func (r *MeasurementHistoryHandler) CreateHistoryFromApp(c *gin.Context) {
	var req schema.CreateMeasurementHistoryFromAppRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(400, gin.H{"error": err.Error()})
		return
	}

	aId, err := uuid.Parse(c.GetString(middleware.AccountId))
	if err != nil {
		c.JSON(500, gin.H{"error": err.Error()})
		return
	}

	f, err := r.Module.RepositoryModule().FoodRepository().FindByAccountIdAndNfcUid(c, aId, strings.ToLower(req.NfcUid))
	if err != nil {
		c.JSON(404, gin.H{"error": err.Error()})
		return
	}

	h := &entity.MeasurementHistory{
		FoodID:        f.ID,
		RawWeightGram: req.Weight,
	}
	if req.MacAddress != nil {

		if err != nil {
			c.JSON(400, gin.H{"error": err.Error()})
			return
		}
		device, err := r.Module.RepositoryModule().DeviceRepository().FindByAccountIDAndMacAddress(c, aId, *req.MacAddress)
		if err != nil {
			c.JSON(404, gin.H{"error": err.Error()})
			return
		}
		if device.AccountID != aId {
			c.JSON(403, gin.H{"error": "device does not belong to the account"})
			return
		}
		h.DeviceID = &device.ID
	}
	mhe, err := r.Module.RepositoryModule().MeasurementHistoryRepository().Create(c, h)
	if err != nil {
		c.JSON(500, gin.H{"error": err.Error()})
		return
	}

	c.JSON(http.StatusOK, schema.MeasurementHistory{
		Id:        mhe.ID,
		FoodId:    f.ID.String(),
		Weight:    mhe.RawWeightGram,
		CreatedAt: mhe.CreatedAt,
	})
	r.sendPushNotifyIfNeed(c, f, mhe)
}
