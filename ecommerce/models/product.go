package models

import (
    "github.com/astaxie/beego/orm"
)

type Product struct {
    Id         int
    Name       string
    Type       string
    Details    string
    Price      float64
    Status     string
    ProductImage string // Add ProductImage field
}

func init() {
    orm.RegisterModel(new(Product))
}
