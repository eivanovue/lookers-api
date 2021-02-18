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

     <h2 class="navigation-header-text mb-5"> All test drives </h2>

        <#if testDrives?size != 0>
            <table class="table table-striped table-borderless">
              <thead>
                <tr>
                  <th class="active">
                       <input type="checkbox" class="select-all checkbox" name="select-all" />
                   </th>
                  <th scope="col">Name</th>
                  <th scope="col">Email</th>
                  <th scope="col">Phone</th>
                  <th scope="col">Date</th>
                  <th scope="col">Time</th>
                  <th scope="col">Car</th>

                </tr>
              </thead>
              <tbody>
              <#list testDrives as testDrive>
                <tr>
                   <td class="active">
                       <input type="checkbox" class="select-item checkbox" name="select-item" value="1000" />
                   </td>
                  <td>${testDrive.name}</td>
                  <td>${testDrive.email}</td>
                  <td>${testDrive.phone}</td>
                  <td>${testDrive.date}</td>
                  <td>${testDrive.time}</td>
                  <td><a href="${testDrive.car.viewCarUrl}" target="_blank">${testDrive.car.brand} ${testDrive.car.model}</a></td>
                </tr>
               </#list>
              </tbody>
            </table>
        <#else>
            <div class="alert alert-secondary" role="alert">
              There are no booked test drives.
            </div>
        </#if>
        <div class="btn-section">
            <div class="btn-container">
                <a href="/dashboard" class="btn cancel-btn" href="">Go back</a>
                <#if testDrives?size != 0>
                    <a class="btn print-btn" href="">Print</a>
                </#if>
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