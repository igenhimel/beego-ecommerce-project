
     {{template "partials/header.tpl" .}}
    
    <div class="container">
         {{template "alert.tpl" .}}
        <div class="card">
            <h2 class="text-center"><i class="fas fa-sign-in-alt"></i> Login</h2>
            <form method="post" action="/login">
                <div class="form-group">
                    <label for="email"><i class="fas fa-envelope"></i> Email</label>
                    <input type="text" name="email" class="form-control" id="email" placeholder="Email">
                </div>
                <div class="form-group">
                    <label for="password"><i class="fas fa-lock"></i> Password</label>
                    <input type="password" name="password" class="form-control" id="password" placeholder="Password">
                </div>
                <button type="submit" class="btn btn-primary btn-block"><i class="fas fa-sign-in-alt"></i> Login</button>
            </form>
        </div>
    </div>
     {{template "partials/footer.tpl" .}}
    