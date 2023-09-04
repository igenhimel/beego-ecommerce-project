
    {{template "partials/header.tpl" .}}
    
    <div class="container">
        {{template "alert.tpl" .}}
    <h1>Welcome to the Dashboard</h1>
    <a href="/logout">Logout</a>
    
    <!-- Add Bootstrap JavaScript (assuming you're using Bootstrap) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

    </div>

   {{template "partials/footer.tpl" .}}