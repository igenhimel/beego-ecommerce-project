<!-- select_product.tpl -->
{{template "partials/header.tpl" .}}
<div class="container mt-5">
    <h1 class="text-center">Select Product</h1>
    <form action="/admin/update-product" method="post"> <!-- Use GET method -->
        <div class="form-group">
            <label for="productName">Select Product:</label>
            <select class="form-control" name="productName" id="productName">
                <!-- Populate this dropdown with product names from the database -->
                {{ range .ProductNames }}
                    <option value="{{ . }}">{{ . }}</option>
                {{ end }}
            </select>
        </div>
        <button type="submit" class="btn btn-primary">Select</button>
    </form>
</div>
{{template "partials/footer.tpl" .}}
