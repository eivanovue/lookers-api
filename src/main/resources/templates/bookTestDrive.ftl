
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
    <script src="/assets/formValidation.js"></script>

</head>
<body>
<div class="container">

    <div class="header">
        <a href="/view/car/${car.id}" class="btn" style="position:absolute; left:20px; top:40px;" role="button" aria-label="Back">
            <img class="link-icon" src="/assets/back.svg"/>
        </a>
        <div class="header-items">
            <h1> Lookers </h1>
            <p>for you, for life</p>
        </div>
    </div>

    <div class="main-container mb-3">
        <div class="row no-margin-bottom justify-content-center">
            <div class="header-items text-dark">
            </div>

            <#if unique?? >
                <#if unique == false >
                    <div class="alert alert-danger" style="margin: 15;" role="alert">
                        Booking already exists for this phone number.
                    </div>
                </#if>
            </#if>
            <form class="needs-validation mt-5" novalidate="novalidate" action="/test-drive/car/${car.id}/create"
                  method="post">
                <h3 class="mb-3 justify-content-center text-dark"> Book a test drive today! </h3>
                <div class="form-group">
                    <label for="name" class="text-dark">Name </label>
                    <input type="text" class="form-control" id="name" name="name" aria-describedby="emailHelp"
                           placeholder="Enter name" required="required"/>
                    <div class="invalid-feedback">
                        Please enter your name
                    </div>
                </div>
                <div class="form-group">
                    <label for="email" class="text-dark">Email address</label>
                    <input type="email" class="form-control" id="email" name="email" aria-describedby="emailHelp"
                           placeholder="Enter email" required="required"/>
                    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone
                        else.</small>
                    <div class="invalid-feedback">
                        Please enter your email
                    </div>
                </div>
                <div class="form-group">
                    <label for="phone" class="text-dark">Phone number</label>
                    <input type="text" class="form-control" id="phone" name="phone" aria-describedby="phoneHelp"
                           placeholder="Enter phone number" required="required"/>
                    <small id="phoneHelp" class="form-text text-muted">We'll never share your number with anyone
                        else.</small>
                    <div class="invalid-feedback">
                        Please enter your phone number
                    </div>
                </div>

                <div class="form-group">
                    <label for="date" class="text-dark">Date</label>
                    <input class="form-control" type="date" id="date" name="date" required="required"/>
                    <div class="invalid-feedback">
                        Please specify a date for your test drive
                    </div>
                </div>
                <div class="form-group mb-3">
                    <label for="time" class="text-dark">Time</label>
                    <select class="form-control " id="time" name="time" required="required">
                        <option>10:00</option>
                        <option>10:30</option>
                        <option>11:00</option>
                        <option>11:30</option>
                        <option>12:00</option>
                        <option>12:30</option>
                        <option>13:00</option>
                        <option>13:30</option>
                        <option>14:00</option>
                        <option>14:30</option>
                        <option>15:00</option>
                        <option>15:30</option>
                        <option>16:00</option>
                        <option>16:30</option>
                    </select>
                    <div class="invalid-feedback">
                        Please enter a time slot for your test drive
                    </div>
                </div>
                <button type="submit" class="btn btn-primary btn-block btn-lookers text-center mb-1">Submit</button>
            </form>
        </div>
    </div>
</div>
</body>
</html>
