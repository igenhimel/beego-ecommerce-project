package controllers

import (
    "github.com/astaxie/beego"
    "github.com/astaxie/beego/orm"
    _ "github.com/lib/pq"
    "ecommerce/models" // Import the User model
)

type UserController struct {
    beego.Controller
}

// SignUp displays the signup form.
func (c *UserController) SignUp() {
    c.TplName = "signup.tpl"
}

// SignUpPost handles the form submission for user registration.
func (c *UserController) SignUpPost() {
    // Get user input from the form
    username := c.GetString("username")
    email := c.GetString("email")
    password := c.GetString("password")

    // Perform validation (example: check if required fields are not empty)
    if username == "" || email == "" || password == "" {
        c.Data["Error"] = "All fields are required"
        c.Data["AlertClass"] = "alert-danger"
        c.TplName = "signup.tpl"
        return
    }

    // Check if the email is already registered
    o := orm.NewOrm()
    user := models.Users{Email: email}
    if err := o.Read(&user, "Email"); err == nil {
        c.Data["Error"] = "Email is already registered"
        c.Data["AlertClass"] = "alert-danger"
        c.TplName = "signup.tpl"
        return
    }

    // Create a new user
    newUser := models.Users{
        Username: username,
        Email:    email,
        Password: password,
    }

    // Save the user to the database
    if _, err := o.Insert(&newUser); err != nil {
        // Handle database errors
        c.Data["Error"] = "Error creating user"
        c.Data["AlertClass"] = "alert-danger"
        c.TplName = "signup.tpl"
        return
    }

    // Set a success message in the session
    c.SetSession("SuccessMessage", "User created successfully!")

    // Redirect to the login page and show the success message
    c.Redirect("/login", 302)
}

// Login displays the login form.
func (c *UserController) Login() {
    successMessage := c.GetSession("SuccessMessage")
    c.DelSession("SuccessMessage")

    // Pass the success message to the view
    c.Data["Success"] = successMessage
    c.TplName = "login.tpl"
}
// LoginPost handles the form submission for user login.
func (c *UserController) LoginPost() {
    // Get user input from the login form
    email := c.GetString("email")
    password := c.GetString("password")

    // Authenticate the user
    o := orm.NewOrm()
    user := models.Users{Email: email, Password: password}
    if err := o.Read(&user, "Email", "Password"); err != nil {
        // Authentication failed
        c.Data["Error"] = "Invalid credentials"
        c.TplName = "login.tpl"
        return
    }

    // Set a session variable to mark the user as authenticated
    c.SetSession("UserID", user.ID)

    // Set a success message in the session
    c.SetSession("SuccessMessage", "Login successful!")

    // Redirect to the dashboard page upon successful login
    c.Redirect("/product-list", 302)
}


// Logout logs the user out by clearing their session.
func (c *UserController) Logout() {
    // Clear the session
    c.DelSession("UserID")

    // Redirect to a login page or home page
    c.Redirect("/login", 302)
}
