<!DOCTYPE html>
<html>
<head>
    <title>Delete Product</title>
    <!-- Include your CSS and JavaScript files here -->
</head>
<body>
    <h1>Delete Product</h1>
    <!-- Dropdown to choose a product to delete -->
    <form action="/admin/delete-product" method="post">
        <label for="productId">Select Product:</label>
        <select name="productId">
            <!-- Populate this dropdown with product options -->
            <!-- Example: <option value="1">Product 1</option> -->
        </select><br>

        <button type="submit">Delete Product</button>
    </form>
</body>
</html>
