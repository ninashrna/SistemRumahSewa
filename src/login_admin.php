<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Login Admin</title>
        <link rel="stylesheet" href="index.css">
    </head>

    <body>
        <section>
            <div class="imgBx">
                <img src="img/bg-2.jpg">
            </div>
            <div class="contentBx">
                <div class="formBx">
                    <h1>ADMIN</h1>
                    <h2>Login</h2>
                    <form action="login_admin_process.php" method="POST">
						<div class="inputBx">
                            <?php if (isset($_GET['error'])) { ?>
			                <p class="error"><?php echo $_GET['error']; ?></p>
		                    <?php } ?>
                        </div>
                        <div class="inputBx">
                            <span>Email</span>
                            <input type="text" name="email">
                        </div>
                        <div class="inputBx">
                            <span>Password</span>
                            <input type="password" name="password">
                        </div>
                        <div class="inputBx">
                            <input type="submit" value="Sign in" name="">
                        </div>
                        <div class="inputBx">
                            <p>Are you not an admin? <a href="login_user.php">Login as user</a></p>
                        </div>
                    </form>
                </div>
            </div>
        </section>
    </body>
</html>