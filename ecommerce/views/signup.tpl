

     {{template "partials/header.tpl" .}}

    <div class="container">
     {{template "alert.tpl" .}}
        <div class="card bg-transparent">
            <h2 class="text-center"><i class="fas fa-user-plus"></i> Sign Up</h2>
            <form method="post" action="/signup">
                <div class="form-group mt-2">
                    <label for="username"><i class="fas fa-user"></i> Username</label>
                    <input type="text" name="username" class="form-control mt-2" id="username" placeholder="Username">
                </div>
                <div class="form-group mt-2">
                    <label for="email"><i class="fas fa-envelope"></i> Email</label>
                    <input type="text" name="email" class="form-control mt-2" id="email" placeholder="Email">
                </div>
                <div class="form-group mt-2">
                    <label for="password"><i class="fas fa-lock"></i> Password</label>
                    <input type="password" name="password" class="form-control mt-2" id="password" placeholder="Password">
                </div>
                <div class="text-center mt-2 mb-2">
                    <button type="submit" class="btn btn-primary btn-block"><i class="fas fa-check"></i> Sign Up</button>
                </div>
            </form>
            <div class="card-footer text-center mt-1">
            Already have an account? <a href="/login">login here</a>
            </div>
        </div>
    </div>


     {{template "partials/footer.tpl" .}}