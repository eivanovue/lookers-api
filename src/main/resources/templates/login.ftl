<!DOCTYPE html>
<html>
<head>
    <title>Lookers</title>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="icon" type="image/png" sizes="32x32" href="/assets/favicon-32x32.png">
    <link href="webjars/bootstrap/4.5.2/css/bootstrap.min.css"
          rel="stylesheet"/>

    <style type="text/css">
            <#include "dashboard.css">
    </style>

    <script src="webjars/jquery/1.9.1/jquery.min.js"></script>
    <script src="webjars/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>

<body>

    <!----------------------------- header ---------------------------------->

    <header class="header">
        <nav class="nav">
            <div class="menu-btn-container">
                <button class="menu-btn">
                    <img class="link-icon" src="/assets/hamburger-icon.svg" />
                    <span class="menu-text">Menu</span>
                </button>
            </div>

            <h1 class="lookers-header-text"> Lookers </h1>
        </nav>
    </header>

    <!------------------------------main ------------------------------------>

    <div class="main-container mb-3">
        <h2 class="dashboard-header-text">Dashboard</h2>
        <div class="login-container">
            <h3 class="login-header">Log In</h3>
            <p class="login-sub-header">Please log in using your details below</p>
            <div class="form-container">
                <form class="mt-5" action="/login" method="post">
                    <div class="form-group mb-3">
                        <label class="form-label-text"> User Name </label>
                        <input type="text" class="form-control form-input-box" name="username"/>
                    </div>

                    <div class="form-group mb-3">
                        <label class="form-label-text"> Password </label>
                        <input type="password" class="form-control form-input-box" name="password"/>
                    </div>
                    <#if error.isPresent()>
                        <p class="invalid-login">The email or password you have entered is invalid, try again.</p>
                    </#if>

                    <button type="submit" class="btn btn-primary btn-block btn-lookers lookers-login text-center mb-3"> Log in </button>

                </form>
            </div>

        </div>
    </div>

 </body>

</html>