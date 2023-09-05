
{{template "partials/header.tpl" .}}
<div class="container mt-5">
    <h1 class="text-center">Add Product</h1>
    <form action="/admin/add-product" method="post" enctype="multipart/form-data">
        <!-- Product name field -->
        <div class="form-group">
            <label for="name">Name:</label>
            <input type="text" class="form-control" name="name" required>
        </div>

        <!-- Product type dropdown -->
        <div class="form-group">
            <label for="type">Type:</label>
            <select class="form-control" name="type" required>
                <option value="Fashion">Fashion</option>
                <option value="Electronics">Electronics</option>
                <option value="Groceries">Groceries</option>
                <option value="Home & Kitchen">Home & Kitchen</option>
                <option value="Beauty">Beauty</option>
            </select>
        </div>

        <!-- Product details field -->
        <div class="form-group">
            <label for="details">Details:</label>
            <textarea class="form-control" name="details" required></textarea>
        </div>

        <!-- Product price field -->
        <div class="form-group">
            <label for="price">Price:</label>
            <input type="number" class="form-control" name="price" step="0.01" required>
        </div>

        <!-- Product stock status dropdown -->
        <div class="form-group">
            <label for="status">Stock Status:</label>
            <select class="form-control" name="status" required>
                <option value="In Stock">In Stock</option>
                <option value="Out of Stock">Out of Stock</option>
            </select>
        </div>

        <!-- Product image upload field -->
        <div class="form-group">
            <label for="productImage">Product Image:</label>
            <input type="file" class="form-control-file" name="productImage" required>
        </div>

        <button type="submit" class="btn btn-primary">Add Product</button>
    </form>
</div>

    {{template "partials/footer.tpl" .}}