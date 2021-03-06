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
            <a class="btn logout-btn" href="/logout">Logout</a>
        </nav>
    </header>

    <!------------------------------main ------------------------------------>

    <div class="main-container">

        <div class="main-row">

          <div class="left-col">

              <div class="navigation-container">
                <h2 class="navigation-header-text"> Navigation </h2>
                <div class="btn-toolbar" role="toolbar">

                    <a href="/dashboard/view/all">
                        <button type="button" class="navigation-btn">
                            <img class="link-icon decal-link-icon" src="/assets/car-icon.svg" style="width:110px"/>
                            <div class="btn-text-container"><span>View all cars</span></div>
                        </button>
                    </a>
                    <a href="/dashboard/view/calls">
                        <button type="button" class="navigation-btn">
                            <img class="link-icon decal-link-icon" src="/assets/phone-icon-dashboard.svg"/>
                            <div class="btn-text-container"><span>View calls</span></div>
                        </button>
                    </a>
                    <a href="/dashboard/view/test-drives">
                        <button type="button" class="navigation-btn">
                            <img class="link-icon decal-link-icon" src="/assets/test-drive-dashboard-icon.svg" style="width:86px"/>
                            <div class="btn-text-container"><span>View test drives</span></div>
                        </button>
                    </a>

                </div>
              </div>


            <div class="scan-container">
                <h2 class="scan-header-text"> Scans </h2>
                <div class="scan-content-container">
                    <div class="col-sm-3 scan-content-box">
                        <p class="scan-item-header">Today</p>
                        <div class="scan-item-container"> ${scansToday}</div>
                    </div>
                    <div class="col-sm-3 scan-content-box">
                        <p class="scan-item-header">Past Week</p>
                        <div class="scan-item-container"> ${scansPastWeek} </div>
                    </div>
                    <div class="col-sm-3 scan-content-box">
                        <p class="scan-item-header">Past Month</p>
                        <div class="scan-item-container"> ${scansPastMonth}  </div>
                    </div>
                    <div class="col-sm-3 scan-content-box">
                        <p class="scan-item-header">All Time</p>
                        <div class="scan-item-container"> ${scansAllTime} </div>
                    </div>
                  </div>
            </div>
          </div>

          <div class="car-container">
              <h2 class="cars-header-text"> Overview </h2>

              <div class="car-table">

                <div class="topic-row">
                    <span class="">Rank</span>
                    <span class="topic-brand">Brand & Model</span>
                    <span class="">Scans</span>
                </div>

                <#list carScansList as carScan>
                <div class="single-row">
                    <span class="car-index">${carScan?counter}</span>
                    <div class="car-table-data">
                        <p class="car-brand">${carScan.car.brand}</p>
                        <p class="car-model">${carScan.car.model}</p>
                    </div>
                    <span class="car-scans">${carScan.numberOfScans}</span>
                    <span class="car-sticker-btn"><a href="/sticker/car/${carScan.car.id}" role="button">Sticker</a></td></span>
                </div>
                </#list>
              </div>
          </div>

        </div>


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