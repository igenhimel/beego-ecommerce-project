

     {{template "partials/header.tpl" .}}

    <div class="container">
     {{template "alert.tpl" .}}
        <div class="card">
            <h2 class="text-center"><i class="fas fa-user-plus"></i> Sign Up</h2>
            <form method="post" action="/signup">
                <div class="form-group">
                    <label for="username"><i class="fas fa-user"></i> Username</label>
                    <input type="text" name="username" class="form-control" id="username" placeholder="Username">
                </div>
                <div class="form-group">
                    <label for="email"><i class="fas fa-envelope"></i> Email</label>
                    <input type="text" name="email" class="form-control" id="email" placeholder="Email">
                </div>
                <div class="form-group">
                    <label for="password"><i class="fas fa-lock"></i> Password</label>
                    <input type="password" name="password" class="form-control" id="password" placeholder="Password">
                </div>
                <button type="submit" class="btn btn-primary btn-block"><i class="fas fa-check"></i> Sign Up</button>
            </form>
        </div>
    </div>

     {{template "partials/footer.tpl" .}}