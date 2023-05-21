package schema

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
