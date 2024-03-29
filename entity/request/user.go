package request

type Register struct {
	Name     string `form:"name" json:"name" binding:"required"`
	Email    string `form:"email" json:"email"  binding:"required,email"`
	Password string `form:"password" json:"password" binding:"required"`
}

type Login struct {
	Email    string `form:"email" json:"email"  binding:"required,email"`
	Password string `form:"password" json:"password" binding:"required"`
}
