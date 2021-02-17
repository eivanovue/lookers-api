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

    <div class="main-container">

        <form action="/login" method="post">
            <div><label> User Name : <input type="text" name="username"/> </label></div>
            <div><label> Password: <input type="password" name="password"/> </label></div>
            <div><input type="submit" value="Sign In"/></div>
        </form>
        <#if error.isPresent()>
        <p>The email or password you have entered is invalid, try again.</p>
        </#if>

    </div>

    </body>
</html>