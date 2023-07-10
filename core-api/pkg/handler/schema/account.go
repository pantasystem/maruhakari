package schema

import "github.com/gin-gonic/gin"

type CreateAccountRequest struct {
	Username string `json:"username"`
	Password string `json:"password"`
}

type LoginAccountRequest struct {
	Username string `json:"username"`
	Password string `json:"password"`
}

type Account struct {
	Id        string `json:"id"`
	Username  string `json:"username"`
	CreatedAt string `json:"created_at"`
	UpdatedAt string `json:"updated_at"`
}

type TokenWithAccount struct {
	Token   string   `json:"token"`
	Account *Account `json:"account"`
}

type RegisterFcmTokenRequest struct {
	FcmToken string `json:"fcm_token"`
}

type AccountController interface {
	CreateAccount(c *gin.Context)
	LoginAccount(c *gin.Context)
	VerifyToken(c *gin.Context)
	RegisterFcmToken(c *gin.Context)
}
