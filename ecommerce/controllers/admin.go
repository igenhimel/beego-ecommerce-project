package controllers

import (

	"github.com/astaxie/beego"
	"ecommerce/models"
	"github.com/astaxie/beego/orm"
)

type AdminController struct {
    beego.Controller
}

func (c *AdminController) Dashboard() {
    c.TplName = "admin/dashboard.tpl"
}

func (c *AdminController) AddProduct() {
    c.TplName = "admin/add_product.tpl"
}



// Add product with image upload
func (c *AdminController) AddProductPost() {
    // Get data from the form or request
    name := c.GetString("name")
    productType := c.GetString("type")
    details := c.GetString("details")
    price, _ := c.GetFloat("price")
    status := c.GetString("status")

    
    // Add similar statements for other fields
    
    file, header, err := c.GetFile("productImage")
    if err != nil {
        c.Redirect("/error", 302)
        return
    }
    defer file.Close()

    originalFilename := header.Filename
    savePath := "static/img/" + originalFilename
    err = c.SaveToFile("productImage", savePath)
    if err != nil {
        c.Redirect("/error", 302)
        return
    }

    product := models.Product{
        Name:         name,
        Type:         productType,
        Details:      details,
        Price:        price,
        Status:       status,
        ProductImage: originalFilename, 
    }

    _, err = saveProductToDatabase(&product)
    if err != nil {
        c.Redirect("/error", 302)
        return
    }
    c.Redirect("/admin/dashboard", 302)
}


// Delete product
func (c *AdminController) DeleteProduct() {
    id, _ := c.GetInt(":id")

    err := deleteProductFromDatabase(id)
    if err != nil { 
        c.Redirect("/error", 302)
        return
    }

    c.Redirect("/products", 302)
}


func (c *AdminController) UpdateProduct() {
    productName := c.GetString("productName")
    var product models.Product
    o := orm.NewOrm()
    err := o.QueryTable("product").Filter("Name", productName).One(&product)
    if err != nil {
        c.Redirect("/error", 302)
        return
    }

    c.Data["Product"] = product
    c.TplName = "admin/update_product.tpl"
   
}

// Function to handle the submission of the updated product data
func (c *AdminController) SaveUpdatedProduct() {
    // Get the product ID from the form data
    productID, err := c.GetInt("id")
    if err != nil {
        // Handle error (e.g., display an error message or redirect to an error page)
        c.Redirect("/error", 302)
        return
    }

    // Fetch the product from the database based on the ID
    var product models.Product
    o := orm.NewOrm()
    err = o.QueryTable("product").Filter("Id", productID).One(&product)
    if err != nil {
        // Handle error (e.g., display an error message or redirect to an error page)
        c.Redirect("/error", 302)
        return
    }

    // Get the updated product data from the form
    name := c.GetString("name")
    productType := c.GetString("type")
    details := c.GetString("details")
    price, _ := c.GetFloat("price")
    status := c.GetString("status")

    // Handle file upload for updated product image (if provided)
    var updatedImageFilename string
    file, header, err := c.GetFile("updatedProductImage")
    if err == nil {
        defer file.Close()

        // Use the original image filename
        updatedImageFilename = header.Filename

        // Save the uploaded file to a directory (you should specify the directory path)
        savePath := "static/img/" + updatedImageFilename
        err = c.SaveToFile("updatedProductImage", savePath)
        if err != nil {
            // Handle error (e.g., display an error message or redirect to an error page)
            c.Redirect("/error", 302)
            return
        }
    }

    // Update the product with the new data
    product.Name = name
    product.Type = productType
    product.Details = details
    product.Price = price
    product.Status = status

    // Update the product image filename if an updated image was provided
    if updatedImageFilename != "" {
        product.ProductImage = updatedImageFilename
    }

    // Save the updated product back to the database
    if err := updateProductInDatabase(&product); err != nil {
        // Handle error (e.g., display an error message or redirect to an error page)
        c.Redirect("/error", 302)
        return
    }

    // Redirect to a success page or the updated product's details page
    c.Redirect("/admin/dashboard", 302)
}



// Functions to interact with the database should be implemented here
func saveProductToDatabase(product *models.Product) (int, error) {
    o := orm.NewOrm()
    _, err := o.Insert(product)
    if err != nil {
        return 0, err 
    }

    return product.Id, nil 
}


func deleteProductFromDatabase(id int) error {
    o := orm.NewOrm()
    product := models.Product{Id: id}
    _, err := o.Delete(&product)
    return err
}


func updateProductInDatabase(product *models.Product) error {
    o := orm.NewOrm()
    _, err := o.Update(product)
    return err
}


func (c *AdminController) SelectProduct() {
    var products []models.Product
    if _, err := orm.NewOrm().QueryTable(new(models.Product)).All(&products); err != nil {
        c.Redirect("/error", 302)
        return
    }
    productNames := make([]string, len(products))
    for i, product := range products {
        productNames[i] = product.Name
    }

    c.Data["ProductNames"] = productNames
    c.TplName = "admin/select_product.tpl"
}