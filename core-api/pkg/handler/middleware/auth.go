package middleware

import (
	"core-api/pkg/entity"
	"core-api/pkg/module"
	"core-api/pkg/repository"
	"net/http"
	"strings"

	"github.com/gin-gonic/gin"
)

type DefaultAuthMiddleware struct {
	Module module.Module
}

const (
	AccountId string = "ACCOUNT_ID"
)

func (r *DefaultAuthMiddleware) CheckToken() gin.HandlerFunc {
	return func(c *gin.Context) {
		token := GetToken(c)
		if token == nil {
			c.JSON(http.StatusUnauthorized, gin.H{"type": "unauthorized", "message": "invalid token"})
			c.Abort()
			return
		}
		user, err := r.Module.RepositoryModule().AccountRepository().FindByToken(c.Request.Context(), *token)
		if user != nil && err == nil {
			c.Set(AccountId, user.ID.String())
			c.Next()
			return
		} else {
			c.JSON(http.StatusUnauthorized, gin.H{"type": "unauthorized", "message": "invalid token"})
			c.Abort()
			return
		}
	}
}

func GetToken(c *gin.Context) *string {
	aHeader := c.Request.Header["Authorization"]
	if len(aHeader) < 1 {
		return nil
	}
	sliced := strings.Split(aHeader[0], " ")
	if len(sliced) <= 1 {
		return nil
	}

	token := sliced[1]
	return &token
}

func GetCurrentUser(dao repository.AccountRepository, c *gin.Context) (*entity.Account, error) {
	token := GetToken(c)
	if token == nil {
		return nil, nil
	}
	return dao.FindByToken(c.Request.Context(), *token)
}
