<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SignIn__SignUp__Landing__Page</title>
    <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="css/style.css">

</head>
<body>
    <div class="container">
        <div class="forms-container">
            <div class="signin-signup">
            
            <form class="sign-in-form" action="LoginServlet" method="post">
                <h2 class="title">Sign In</h2>
                <div class="input-field">
                    <i class='bx bxs-user'></i>
                    <input type="text" placeholder="Username" name="userid">
                </div>
                <div class="input-field">
                    <i class='bx bxs-lock-alt'></i>
                    <input type="password" placeholder="Password" name="password">
                </div>
                <input type="submit" value="Login" class="btn solid">
                <p class="social-text">Or sign in with social platforms</p>

                <div class="social-media">
                    <a href="#" class="social-icon">
                        <i class='bx bxl-facebook'></i>
                    </a>
                    <a href="#" class="social-icon">
                        <i class='bx bxl-twitter'></i>
                    </a>
                    <a href="#" class="social-icon">
                        <i class='bx bxl-google'></i>
                    </a>
                    <a href="#" class="social-icon">
                        <i class='bx bxl-linkedin'></i>
                    </a>
                </div>
            </form>
            <form class="sign-up-form" action="reg-process.jsp" method="post">
                <h2 class="title">Sign Up</h2>
                                <div class="input-field">
                    <i class='bx bxs-user'></i>
                    <input type="text" name="fname" placeholder="First Name">
                </div>
                <div class="input-field">
                    <i class='bx bxs-user'></i>
                    <input type="text" name="lname" placeholder="Last Name">
                </div>
                <div class="input-field">
                    <i class='bx bxs-user'></i>
                    <input type="text" name="email" placeholder="Email">
                </div>
                <div class="input-field">
                    <i class='bx bxs-user'></i>
                    <input type="text" name="userid" placeholder="Username">
                </div>
                <div class="input-field">
                    <i class='bx bxs-lock-alt'></i>
                    <input type="password" name="password" placeholder="Password">
                </div>
                <input type="submit" value="Sign Up" class="btn solid">
                <p class="social-text">Or sign up with social platforms</p>

                <div class="social-media">
                    <a href="#" class="social-icon">
                        <i class='bx bxl-facebook'></i>
                    </a>
                    <a href="#" class="social-icon">
                        <i class='bx bxl-twitter'></i>
                    </a>
                    <a href="#" class="social-icon">
                        <i class='bx bxl-google'></i>
                    </a>
                    <a href="#" class="social-icon">
                        <i class='bx bxl-linkedin'></i>
                    </a>
                </div>
            </form>
            </div>
        </div>
        <div class="panels-container">
            <div class="panel left-panel">
                <div class="content">
                    <h3>New here?</h3>
                    <p> Register as one of the Hydrae Users.</p>
                    <button class="btn transparent" id="sign-up-btn">Sign up</button>
                </div>
                <img src="images/Mobile login-amico.png" class="image" alt="">
            </div>
            <div class="panel right-panel">
                <div class="content">
                    <h3>One of us?</h3>
                    <p> Log in your account and book your appointment</p>
                    
                    <button class="btn transparent" id="sign-in-btn">Sign in</button>
                </div>
                <img src="images/Security-amico.png" class="image" alt="">
            </div>
        </div>
    </div>
    <script>
    const sign_in_btn = document.querySelector("#sign-in-btn");
    const sign_up_btn = document.querySelector("#sign-up-btn");

    const container = document.querySelector(".container");

    sign_up_btn.addEventListener('click', () => {
        container.classList.add("sign-up-mode");
    });
    sign_in_btn.addEventListener('click', () => {
        container.classList.remove("sign-up-mode");
    });
    </script>
    
</body>
</html>