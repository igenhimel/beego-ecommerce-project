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
    // Check if the user is authenticated
    if userID := c.GetSession("UserID"); userID == nil {
        // User is not authenticated, redirect to the login page
        c.Redirect("/login", 302)
        return
    }

    // Get and clear the success message from the session
    successMessage := c.GetSession("SuccessMessage")
    c.DelSession("SuccessMessage")

    // Pass the success message to the view
    c.Data["Success"] = successMessage

    // Render the dashboard template
    c.TplName = "product-list.tpl"
}
