package models

import (
    "github.com/astaxie/beego/orm"
    _ "github.com/lib/pq" // Import the PostgreSQL driver
)

// User represents the user model.
type Users struct {
    ID       int    `orm:"auto;pk" json:"id"`
    Username string `orm:"size(255)" json:"username"`
    Email    string `orm:"size(255);unique" json:"email"`
    Password string `orm:"size(255)" json:"-"`
}

func init() {
    // Register the model with the ORM
    orm.RegisterModel(new(Users))
}
