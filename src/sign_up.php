<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Sign Up</title>
        <link rel="stylesheet" href="index.css">
    </head>

    <body>
        <section>
            <div class="imgBx">
                <img src="img/bg-3.jpg">
            </div>
            <div class="contentBx">
                <div class="formBx">
                    <h1>MyUni Life</h1>
                    <h2>Sign up</h2>
                    <form action="sign_up_process.php" method="POST">
						<div class="inputBx">
                            <?php if (isset($_GET['error'])) { ?>
			                    <p class="error"><?php echo $_GET['error']; ?></p>
		                    <?php } ?>
                            <?php if (isset($_GET['sucess'])) { ?>
			                    <p class="sucess"><?php echo $_GET['sucess']; ?></p>
		                    <?php } ?>
                        </div>
                        <div class="inputBx">
                            <span>Username</span>
                            <input type="text" name="username">
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
                            <span>Telephone Number</span>
                            <input type="text" name="telephone">
                        </div>
                        <div class="inputBx">
                            <input type="submit" value="Sign up" name="">
                        </div>
                        <div class="inputBx">
                            <p>Already have an account? <a href="login_user.php">Sign in</a></p>
                        </div>
                    </form>
                </div>
            </div>
        </section>
    </body>
</html>