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

     <h2 class="navigation-header-text"> All cars </h2>

        <table class="table table-striped table-borderless">
          <thead>
            <tr>
              <th class="active">
                   <input type="checkbox" class="select-all checkbox" name="select-all" />
               </th>
              <th scope="col">Id</th>
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
               <td class="active">
                   <input type="checkbox" class="select-item checkbox" name="select-item" value="1000" />
               </td>
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

        <div class="btn-section">
            <div class="btn-container">
                <a class="btn cancel-btn" href="">Cancel</a>
                <a class="btn print-btn" href="">Print</a>
            </div>
        </div>


    </div>

        <script>
            $(function(){
                //button select all or cancel
                $("#select-all").click(function () {
                    var all = $("input.select-all")[0];
                    console.log(all);
                    all.checked = !all.checked
                    var checked = all.checked;
                    $("input.select-item").each(function (index,item) {
                        item.checked = checked;
                    });
                });
                //column checkbox select all or cancel
                $("input.select-all").click(function () {
                    var checked = this.checked;
                    $("input.select-item").each(function (index,item) {
                        item.checked = checked;
                    });
                });
                //check selected items
                $("input.select-item").click(function () {
                    var checked = this.checked;
                    var all = $("input.select-all")[0];
                    var total = $("input.select-item").length;
                    var len = $("input.select-item:checked:checked").length;
                    all.checked = len===total;
                });

            });
        </script>

    </body>
</html>