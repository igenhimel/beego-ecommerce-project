<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
        <a class="navbar-brand" href="#">
            <i class="fas fa-shopping-cart text-warning"></i> ShopFlare <!-- Add your desired icon class here -->
        </a>
        
        <!-- Add a button for small screens -->
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto"> <!-- ml-auto pushes the button to the right -->
                <li class="nav-item active">
                    <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Products</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Services</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Contact</a>
                </li>
            </ul>
        </div>

        <!-- Add a Logout button on the top-right corner -->
        <a href="/logout" class="btn btn-danger">Logout</a>
    </div>
</nav>
<nav class="navbar navbar-expand-lg navbar-dark bg-secondary">
    <div class="container">
        <!-- Left Corner - Delivery Address -->
        <div class="navbar-text text-light">
            <i class="fas fa-map-marker-alt"></i> 1234 Elm Street, City
        </div>

        <!-- Middle - Search Bar -->
        <form class="d-flex mx-auto">
            <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-warning" type="submit">Search</button>
        </form>

        <!-- Right Corner - Shopping Cart -->
        <div class="navbar-text ml-auto">
            <a href="#"><i class="fas fa-shopping-cart"></i> Cart (0)</a>
        </div>
    </div>
</nav>
