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
            <#include "main.css">
        </style>

    <script src="webjars/jquery/1.9.1/jquery.min.js"></script>
    <script src="webjars/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>

<body>

<div class="btn-toolbar justify-content-between bg-light" role="toolbar">
  <div class="btn-group">
    <button type="button" class="btn btn-secondary">Menu</button>
  </div>
  <div>
    <h1 class="text-dark"> Lookers </h1>
  </div>
</div>

<div class="main-container">
    <div class="row">
      <div class="col-6">
        <h2 class="text-dark"> Navigation </h2>
        <div class="btn-toolbar" role="toolbar">
          <div class="btn-group mr-2" role="group">
            <button type="button" class="btn btn-primary">Decal generator</button>
          </div>
          <div class="btn-group mr-2" role="group">
            <button type="button" class="btn btn-primary">Edit database</button>
          </div>
          <div class="btn-group" role="group">
            <button type="button" class="btn btn-primary">Add new car</button>
          </div>
        </div>

        <div class="" style="margin-top:30px">
            <h2 class="text-dark"> Scans </h2>
            <div class="row">
                <div class="col-sm-3">
                    <p class="text-dark">Scans Today</p>
                    <div class="container justify-content text-dark"> ${scansToday} </div>
                </div>
                <div class="col-sm-3">
                    <p class="text-dark">Scans Past Week</p>
                    <div class="container justify-content text-dark"> ${scansPastWeek} </div>
                </div>
                <div class="col-sm-3">
                    <p class="text-dark">Scans Past Month</p>
                    <div class="container justify-content text-dark"> ${scansPastMonth} </div>
                </div>
                <div class="col-sm-3">
                    <p class="text-dark">Scans All Time</p>
                    <div class="container justify-content text-dark"> ${scansAllTime} </div>
                </div>
              </div>
        </div>
      </div>

      <div class="col-6">
          <h2 class="text-dark"> All cars </h2>
          <table class="table">
              <tbody>
              <#list carScansList as carScan>
              <tr>
                  <th scope="row">${carScan.car.id}</th>
                  <td>${carScan.car.brand} ${carScan.car.model}</td>
                  <td>${carScan.numberOfScans}</td>
                  <td><a class="btn btn-primary" href="/sticker/car/${carScan.car.id}" role="button">Sticker</a></td>
              </tr>
              </#list>
              </tbody>
          </table>
      </div>

    </div>


</div>

</body>
</html>