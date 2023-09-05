// controllers/dashboard.go

package controllers

import (
    "github.com/astaxie/beego"
)

type ProductController struct {
    beego.Controller
}

// Dashboard displays the user dashboard page.
func (c *ProductController) ProductList() {
  

    // Render the dashboard template
    c.TplName = "product-list.tpl"
}
