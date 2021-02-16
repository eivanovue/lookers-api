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
<body class="sticker-body">
    <div class="sticker-container">
       <div class="header">
          <div class="header-items">
             <h1> Lookers </h1>
             <p>for you, for life</p>
          </div>
       </div>
       <div class="main-container sticker-main-container mb-3">
          <div class="row no-margin-bottom">
             <div class="sticker-header">
                <h2>${car.brand}</h2>
                <p>${car.model}</p>
             </div>
          </div>
          <div class="col-md-12 mb-3 sticker-price-container">
             <div class="sticker-price-header">
                <h4> RRP £${car.RRP}</h4>
                <h2>
                £${car.price}</h2>
                <p> Save £${car.saving} </p>
             </div>
             <div class="col-md-12 mb-3 sticker-car-data">
                <div class="list-group sticker-data-list">
                   <div class="row">
                      <div class="col sticker-col">
                         <p class="mb-1 sticker-data-header">Mileage:</p>
                         <h5 class="mb-1 sticker-data-text"> ${car.mileage} </h5>
                      </div>
                      <div class="col sticker-col">
                         <p class="mb-1 sticker-data-header">Engine size:</p>
                         <h5 class="mb-1 sticker-data-text"> ${car.engineSize} </h5>
                      </div>
                      <div class="w-100"></div>
                      <div class="col sticker-col">
                         <p class="mb-1 sticker-data-header">Registered:</p>
                         <h5 class="mb-1 sticker-data-text"> ${car.registration} </h5>
                      </div>
                      <div class="col sticker-col">
                         <p class="mb-1 sticker-data-header">Doors:</p>
                         <h5 class="mb-1 sticker-data-text"> ${car.doors} </h5>
                      </div>
                      <div class="w-100"></div>
                      <div class="col sticker-col">
                         <p class="mb-1 sticker-data-header">Fuel type:</p>
                         <h5 class="mb-1 sticker-data-text"> ${car.fuelType} </h5>
                      </div>
                      <div class="col sticker-col">
                         <p class="mb-1 sticker-data-header">Body style:</p>
                         <h5 class="mb-1 sticker-data-text"> ${car.bodyStyle} </h5>
                      </div>
                   </div>
                </div>
             </div>
          </div>
          <div class="col-md-12 mb-3 sticker-bottom">
             <h3> Scan for more </h3>
             <ul>
                <li>Buy it now</li>
                <li>Visit our website</li>
                <li>Speak with one of our experts</li>
                <li>Book a test drive</li>
             </ul>
          </div>
          <div class="qr-container">
             <img src="data:image/png;base64, ${car.qrSrc}" class="img-fluid qr-img mb-3"/>
          </div>
       </div>
       <div class="sticker-footer-items">
          <p> <img class="link-icon" src="/assets/phone-icon.svg" /><span>020 8031 1934 </span></p>
          <p> <img class="link-icon" src="/assets/window-icon.svg" /><span>www.lookers.co.uk</span> </p>
       </div>
    </div>
 </body>
</html>
