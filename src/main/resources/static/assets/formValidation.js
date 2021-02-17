(function() {
  'use strict';
  window.addEventListener('load', function() {
    // Fetch all the forms we want to apply custom Bootstrap validation styles to
    var forms = document.getElementsByClassName('needs-validation');
    // Loop over them and prevent submission
    var validation = Array.prototype.filter.call(forms, function(form) {
      form.addEventListener('submit', function(event) {
      console.log(nameValidation())
      console.log(emailValidation())
      console.log(phoneValidation())
      console.log(dateValidation())
      console.log(timeValidation())
        if (!(nameValidation() && emailValidation() && phoneValidation() && dateValidation() && timeValidation())) {
          event.preventDefault();
          event.stopPropagation();
        }
      }, false);
    });

    document.getElementById('name').addEventListener("input", nameValidation, false);
    document.getElementById('email').addEventListener("input", emailValidation, false);
    document.getElementById('phone').addEventListener("input", phoneValidation, false);
    document.getElementById('date').addEventListener("input", dateValidation, false);
    document.getElementById('time').addEventListener("input", timeValidation, false);

   }, false);
})();

function nameValidation (evt) {
    let field = document.getElementById("name");
    let value = field.value;
    let valid = true;

    if (value.length < 1) {
        valid = false;
    }

    if (valid) {
        field.className = "form-control is-valid"
    } else {
        field.className = "form-control is-invalid"
    }

    return valid;
}

function emailValidation (evt) {
    let field = document.getElementById("email");
    let value = field.value;
    let valid = true;

    if (value.replace(' ','').match("^.+\@.+\..+$") == null) {
        valid = false;
    }

    if (valid) {
        field.className = "form-control is-valid"
    } else {
        field.className = "form-control is-invalid"
    }

    return valid;
}

function phoneValidation (evt) {
    let field = document.getElementById("phone");
    let value = field.value;
    let valid = true;

    if (!((value.substring(0,3) == "+44" && value.length == 13) || (value.substring(0,2) == "07" && value.length == 11 ))) {
        valid = false;
    }

    if (value.replace('+','').replace(' ','').match("^[0-9]+$") == null) {
        valid = false;
    }

    if (valid) {
        field.className = "form-control is-valid"
    } else {
        field.className = "form-control is-invalid"
    }

    return valid;
}

function dateValidation (evt) {
    let field = document.getElementById("date");
    let value = field.value;
    let valid = true;

    if (value.match("^[0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]$") == null) {
        valid = false;
    }

    let today = new Date().toISOString().slice(0, 10)
    if (Date.parse(value) < Date.parse(today)) {
        valid = false;
    }

    if (valid) {
        field.className = "form-control is-valid"
    } else {
        field.className = "form-control is-invalid"
    }

    return valid;
}

function timeValidation (evt) {
    let field = document.getElementById("time");
    field.className = "form-control is-valid"

    return true;
}