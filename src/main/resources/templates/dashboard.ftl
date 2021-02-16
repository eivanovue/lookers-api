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

<h1>Scans Today: ${scansToday}</h1>
<h1>Scans Past Week: ${scansPastWeek}</h1>
<h1>Scans Past Month: ${scansPastMonth}</h1>
<h1>Scans All Time: ${scansAllTime}</h1>
<table class="table">
    <thead>
    <tr>
        <th scope="col">#</th>
        <th scope="col">Brand Model</th>
        <th scope="col">Scans</th>
        <th>Actions</th>
    </tr>
    </thead>
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
</body>
</html>