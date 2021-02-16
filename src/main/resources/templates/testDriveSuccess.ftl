
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
            <p>for you, you life</p>
          </div>
        </div>

        <div class="main-container confirmation-main-container">

          <div class="text-container">
            <p> Hi ${testDrive.name} Your request for the ${testDrive.date} has been successfully submitted. We'll be in contact soon. </p>
          </div>

          <div class="success-message">
            <svg viewBox="0 0 76 76" class="success-message__icon icon-checkmark">
                <circle cx="38" cy="38" r="36"/>
                <path id="svgPath" fill="none" stroke="#FFFFFF" stroke-width="5" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10" d="M17.7,40.9l10.9,10.9l28.7-28.7"/>
            </svg>

          </div>

          <div class="col-md-12 mb-1 lookers-btn-container">
            <a href="/view/car/${testDrive.car.id}" class="btn btn-primary btn-block btn-lookers lookers-success confirmation-btn" role="button" aria-pressed="true">Back to main page</a>
          </div>
        </div>
      </div>

      <script>
        setTimeout(function () {
            document.body.classList.add('active');
        }, 200);
      </script>
</body>
</html>
