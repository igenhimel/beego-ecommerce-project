
{{template "partials/header.tpl" .}}

    <div class="container mt-5">
        <h1 class="text-center">Welcome to the Admin Dashboard</h1>
        <div class="row justify-content-center mt-4">
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Add Product</h5>
                        <p class="card-text">Click the button below to add a new product.</p>
                        <a href="/admin/add-product" class="btn btn-primary">Add Product</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Update Product</h5>
                        <p class="card-text">Click the button below to update a product.</p>
                        <a href="/admin/select-product" class="btn btn-primary">Update Product</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Delete Product</h5>
                        <p class="card-text">Click the button below to delete a product.</p>
                        <a href="/admin/delete-product" class="btn btn-danger">Delete Product</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    {{template "partials/footer.tpl" .}}