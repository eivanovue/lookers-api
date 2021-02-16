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
<table class="table">
    <thead>
    <tr>
        <th scope="col">#</th>
        <#list SCAN CARS OR SOMETHING?keys as cars>
        <#list cars[0]?keys as attribute>
        <th scope="col">${attribute}</th>
        </#list></#list>
        <th>Actions</th>
    </tr>
    </thead>
    <tbody>
    <#list SCAN CARS OR SOMETHING?keys as cars>
    <#list cars?keys as car>
    <tr>
        <th scope="row">${car.car.id}</th>
        <#list car.car?keys as attribute>
        <td>${car.car[attribute]}</td>
        </#list>
        <td><a class="btn btn-primary" href="#" role="button">Sticker</a></td>
    </tr>
    </#list>
    </tbody>
</table>
</body>
</html>