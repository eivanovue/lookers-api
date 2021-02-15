<!DOCTYPE html>
<html>
<head>
    <title>Lookers</title>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="icon" type="image/png" sizes="32x32" href="/assets/favicon-32x32.png"/>
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
                <img src="${car.imgSrc}" class="img-fluid img-car mb-3"/>
                <h2 class="text-uppercase">${car.make} ${car.model}</h2>
                <p>${car.body} ${car.engineSize} ${car.doors}dr</p>
            </div>
        </div>

        <div class="row justify-content-center">
            <div class="col-md-12">
                HERE GOES STICKER INFO
            </div>
        </div>
    </div>

</div>
</body>
</html>
