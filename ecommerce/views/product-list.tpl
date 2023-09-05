
    {{template "partials/header.tpl" .}}
    

        <div class="container mt-1">
            {{template "partials/nav.tpl" .}}
            <div class="row">
                <!-- Product 1 -->
                <div class="col-md-4 mb-4">
                    <div class="card">
                        <img src="product1.jpg" class="card-img-top" alt="Product 1">
                        <div class="card-body">
                            <h5 class="card-title">Product 1</h5>
                            <p class="card-text">Description of Product 1 goes here.</p>
                            <p class="card-text">$20.00</p>
                            <a href="#" class="btn btn-primary">Add to Cart</a>
                        </div>
                    </div>
                </div>
    
                <!-- Product 2 -->
                <div class="col-md-4 mb-4">
                    <div class="card">
                        <img src="product2.jpg" class="card-img-top" alt="Product 2">
                        <div class="card-body">
                            <h5 class="card-title">Product 2</h5>
                            <p class="card-text">Description of Product 2 goes here.</p>
                            <p class="card-text">$25.00</p>
                            <a href="#" class="btn btn-primary">Add to Cart</a>
                        </div>
                    </div>
                </div>
    
                <!-- Product 3 -->
                <div class="col-md-4 mb-4">
                    <div class="card">
                        <img src="product3.jpg" class="card-img-top" alt="Product 3">
                        <div class="card-body">
                            <h5 class="card-title">Product 3</h5>
                            <p class="card-text">Description of Product 3 goes here.</p>
                            <p class="card-text">$30.00</p>
                            <a href="#" class="btn btn-primary">Add to Cart</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    


   {{template "partials/footer.tpl" .}}