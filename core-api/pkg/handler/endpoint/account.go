package endpoint

import (
	"core-api/pkg/entity"
	"core-api/pkg/handler/middleware"
	"core-api/pkg/handler/schema"
	"core-api/pkg/module"
	"errors"
	"net/http"

	"github.com/gin-gonic/gin"
	"github.com/google/uuid"
	"gorm.io/gorm"
)

type AccountHandler struct {
	Module module.Module
}

func (r *AccountHandler) CreateAccount(c *gin.Context) {
	var req schema.CreateAccountRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"validation_error": err.Error()})
		return
	}
	exists, err := r.Module.RepositoryModule().AccountRepository().FindByUsername(c, req.Username)
	if err != nil && !errors.Is(err, gorm.ErrRecordNotFound) {
		c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
	}
	if exists != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": "username already exists"})
		return
	}
	a := &entity.Account{
		Username: req.Username,
	}
	if err := a.SetPassword(req.Password); err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}
	a, err = r.Module.RepositoryModule().AccountRepository().Create(c.Request.Context(), a)
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}
	c.JSON(http.StatusOK, schema.TokenWithAccount{
		Token: a.Token.String(),
		Account: &schema.Account{
			Id:        a.ID.String(),
			Username:  a.Username,
			CreatedAt: a.CreatedAt.String(),
			UpdatedAt: a.UpdatedAt.String(),
		},
	})
}

func (r *AccountHandler) LoginAccount(c *gin.Context) {
	var req schema.LoginAccountRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"validation_error": err.Error()})
		return
	}
	a, err := r.Module.RepositoryModule().AccountRepository().FindByUsername(c, req.Username)
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}
	if a == nil {
		c.JSON(http.StatusUnauthorized, gin.H{"error": "invalid username or password"})
		return
	}
	if a.CheckPassword(req.Password) {
		c.JSON(http.StatusUnauthorized, gin.H{"error": "invalid username or password"})
		return
	}
	c.JSON(http.StatusOK, schema.TokenWithAccount{
		Token: a.Token.String(),
		Account: &schema.Account{
			Id:        a.ID.String(),
			Username:  a.Username,
			CreatedAt: a.CreatedAt.String(),
			UpdatedAt: a.UpdatedAt.String(),
		},
	})
}

func (r *AccountHandler) VerifyToken(c *gin.Context) {
	aUuid, err := uuid.Parse(c.GetString(middleware.AccountId))
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}
	a, err := r.Module.RepositoryModule().AccountRepository().FindByID(c.Request.Context(), aUuid)
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}
	c.JSON(http.StatusOK, schema.Account{
		Id:        a.ID.String(),
		Username:  a.Username,
		CreatedAt: a.CreatedAt.String(),
		UpdatedAt: a.UpdatedAt.String(),
	})
}
