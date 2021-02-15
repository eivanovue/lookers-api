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
                <img src="data:image/png;base64, ${car.qrSrc}" class="img-fluid img-car mb-3"/>
                <h2 class="text-uppercase">${car.brand} ${car.model}</h2>
                <p>${car.bodyStyle} ${car.engineSize} ${car.doors}dr</p>
            </div>
        </div>

        <div class="col-md-12 mb-3">
            <div class="content-header">
                <h4 class="text-uppercase"> RRP £${car.RRP}</h4>
                <h1 style="color:#005f95">£${car.price}</h1>
                <p style="color:blue"> Save £${car.saving} </p>
            </div>

            <div class="col-md-12 mb-3">
            <div class="list-group" style="background:#f8f8f8; padding-left:10px">
                <div class="row">
                    <div class="col">
                       <p class="mb-1" style="color:black">Mileage:</p>
                       <h5 class="mb-1" style="color:blue"> ${car.mileage} </h5>
                    </div>

                    <div class="col">
                       <p class="mb-1" style="color:black">Engine size:</p>
                       <h5 class="mb-1" style="color:blue"> ${car.engineSize} </h5>
                    </div>

                    <div class="w-100"></div>

                    <div class="col">
                        <p class="mb-1" style="color:black">Registered:</p>
                        <h5 class="mb-1" style="color:blue"> ${car.registration} </h5>
                    </div>

                    <div class="col">
                        <p class="mb-1" style="color:black">Doors:</p>
                        <h5 class="mb-1" style="color:blue"> ${car.doors} </h5>
                    </div>

                    <div class="w-100"></div>

                    <div class="col">
                         <p class="mb-1" style="color:black">Fuel type:</p>
                         <h5 class="mb-1" style="color:blue"> ${car.fuelType} </h5>
                    </div>

                    <div class="col">
                         <p class="mb-1" style="color:black">Body style:</p>
                         <h5 class="mb-1" style="color:blue"> ${car.bodyStyle} </h5>
                    </div>
                </div>
            </div>
            </div>
        </div>

        <div class="col-md-12 mb-3" style="padding-top:10px">
            <p style="color:black"> Scan for more! </p>
            <ul style="color:blue">
               <li>Buy it now</li>
               <li>Visit our website</li>
               <li>Speak with one of our experts</li>
               <li>Book a test drive</li>
            </ul>
        </div>
    </div>

    <div class="footer">
        <div class="footer-items">
            <p> 020 8031 1934 </p>
            <p> www.lookers.co.uk </p>
        </div>
    <div>
</div>


</body>
</html>
