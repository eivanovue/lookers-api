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
            <#include "dashboard.css">
        </style>

    <script src="/webjars/jquery/1.9.1/jquery.min.js"></script>
    <script src="/webjars/bootstrap/4.5.2/js/bootstrap.min.js"></script>
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


        <table class="table table-striped">
          <thead>
            <tr>
              <th scope="col">#</th>
              <th scope="col">Brand</th>
              <th scope="col">Model</th>
              <th scope="col">RRP</th>
              <th scope="col">Price</th>
              <th scope="col">Saving</th>
              <th scope="col">Scans</th>

            </tr>
          </thead>
          <tbody>
          <#list carScansList as carScans>
            <tr>
              <th scope="row">${carScans.car.id}</th>
              <td>${carScans.car.brand}</td>
              <td>${carScans.car.model}</td>
              <td>£${carScans.car.RRP}</td>
              <td>£${carScans.car.price}</td>
              <td>£${carScans.car.saving}</td>
              <td>${carScans.numberOfScans}</td>
            </tr>
           </#list>
          </tbody>
        </table>



    </div>

     <script>
            const getFontSize = (textLength) => {
            const baseSize = 6;
            let fontSize = 6;
            if (textLength >= 3) {
                fontSize = baseSize - 3;
            }
            else if (textLength >= 5) {
                fontSize = baseSize - 4;
            }

               return fontSize.toString().concat('rem');
            }

            const texts = document.querySelectorAll('.scan-item-container')

            texts.forEach(text => {
                let _text = text.textContent.trim();
                text.style.fontSize = getFontSize(_text.length)
            })
        </script>

    </body>
</html>