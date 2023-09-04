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
    beego.Router("/dashboard", &controllers.UserController{}, "get:Dashboard")

}
