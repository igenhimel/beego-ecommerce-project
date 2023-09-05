{{template "partials/header.tpl" .}}
<div class="container mt-5">
    <h1 class="text-center">Update Product</h1>
    <form action="/admin/updated-product" method="post" enctype="multipart/form-data">
        <!-- Product ID field -->
        <input type="hidden" name="id" value="{{ .Product.Id }}">
        
        <!-- Product name field -->
        <div class="form-group">
            <label for="name">Name:</label>
            <input type="text" class="form-control" name="name" required value="{{ .Product.Name }}">
        </div>

        <!-- Product type dropdown -->
        <div class="form-group">
            <label for="type">Type:</label>
            <select class="form-control" name="type" required>
                <option value="Fashion"{{ if eq .Product.Type "Fashion" }} selected{{ end }}>Fashion</option>
                <option value="Electronics"{{ if eq .Product.Type "Electronics" }} selected{{ end }}>Electronics</option>
                <option value="Groceries"{{ if eq .Product.Type "Groceries" }} selected{{ end }}>Groceries</option>
                <option value="Home & Kitchen"{{ if eq .Product.Type "Home & Kitchen" }} selected{{ end }}>Home & Kitchen</option>
                <option value="Beauty"{{ if eq .Product.Type "Beauty" }} selected{{ end }}>Beauty</option>
            </select>
        </div>

        <!-- Product details field -->
        <div class="form-group">
            <label for="details">Details:</label>
            <textarea class="form-control" name="details" required>{{ .Product.Details }}</textarea>
        </div>

        <!-- Product price field -->
        <div class="form-group">
            <label for="price">Price:</label>
            <input type="number" class="form-control" name="price" step="0.01" required value="{{ .Product.Price }}">
        </div>

        <!-- Product stock status dropdown -->
        <div class="form-group">
            <label for="status">Stock Status:</label>
            <select class="form-control" name="status" required>
                <option value="In Stock"{{ if eq .Product.Status "In Stock" }} selected{{ end }}>In Stock</option>
                <option value="Out of Stock"{{ if eq .Product.Status "Out of Stock" }} selected{{ end }}>Out of Stock</option>
            </select>
        </div>

        <!-- Product image upload field -->
        <div class="form-group">
            <label for="productImage">Product Image:</label>
            <input type="file" class="form-control-file" name="productImage">
        </div>

        <button type="submit" class="btn btn-primary">Update Product</button>
    </form>
</div>
{{template "partials/footer.tpl" .}}
