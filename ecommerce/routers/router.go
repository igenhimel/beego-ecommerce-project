// routers/user.go

package routers

import (
	"ecommerce/controllers"

	"github.com/astaxie/beego"
)

func init() {
    // User routes
    beego.Router("/signup", &controllers.UserController{}, "get:SignUp;post:SignUpPost")
    beego.Router("/login", &controllers.UserController{}, "get:Login;post:LoginPost")
    beego.Router("/logout", &controllers.UserController{}, "get:Logout")

    // Dashboard route (protected)
    beego.Router("/product-list", &controllers.ProductController{}, "get:ProductList")
    beego.Router("/admin/dashboard",&controllers.AdminController{},"get:Dashboard")
    beego.Router("/admin/add-product",&controllers.AdminController{},"get:AddProduct;post:AddProductPost")
    beego.Router("/admin/update-product", &controllers.AdminController{}, "post:UpdateProduct")
    beego.Router("/admin/updated-product", &controllers.AdminController{}, "post:SaveUpdatedProduct")
    beego.Router("/admin/select-product",&controllers.AdminController{},"get:SelectProduct")

}
