<!DOCTYPE html>
<html>
<head>
    <title>Lookers</title>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="icon" type="image/png" sizes="32x32" href="/assets/favicon-32x32.png">
    <link href="/webjars/bootstrap/4.5.2/css/bootstrap.min.css"
          rel="stylesheet"/>

    <style type="text/css">
       <#include "main.css">
    </style>
    <script src="/webjars/jquery/1.9.1/jquery.min.js"></script>
    <script src="/webjars/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">

    <div class="header">
        <div class="header-items">
            <h1> Lookers </h1>
            <p>for you, for life</p>
        </div>
    </div>

    <div class="main-container mb-3">
        <div class="row no-margin-bottom justify-content-center">
            <div class="content-header">
                <img src="${car.imgSrc}" class="img-fluid mb-3"/>
                <h2 class="text-uppercase">${car.make} ${car.model}</h2>
                <p>${car.body} ${car.engineSize} ${car.doors}dr</p>
            </div>
        </div>

        <div class="row justify-content-center">
            <div class="col-md-12">
                <a href="https://www.lookers.co.uk/" class="btn btn-primary btn-block btn-lookers" role="button"
                   aria-pressed="true"><img class="link-icon" src="/assets/window-icon.svg"/>Buy this car</a>
            </div>
            <div class="col-md-12">
                <a href="https://www.lookers.co.uk/" class="btn btn-primary btn-block btn-lookers" role="button"
                   aria-pressed="true"><img class="link-icon" src="/assets/window-icon.svg"/>Visit our website</a>
            </div>
            <div class="col-md-12">
                <a href="forms.html" class="btn btn-primary btn-block btn-lookers" role="button"
                   aria-pressed="true"><img class="link-icon" src="/assets/phone-icon.svg"/>Speak with an expert</a>
            </div>
            <div class="col-md-12 mb-3">
                <a href="forms.html" class="btn btn-primary btn-block btn-lookers" role="button"
                   aria-pressed="true"><img class="link-icon" src="/assets/map-icon.svg"/>Book a test drive</a>
            </div>
        </div>
    </div>

</div>
</body>
</html>
