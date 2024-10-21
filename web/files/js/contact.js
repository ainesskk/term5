document.addEventListener('DOMContentLoaded', function() {
    const contactForm = document.getElementById('contactForm');
    const submitButton = document.getElementById('submit-btn');
    submitButton.disabled = true;

    if (contactForm) {
        contactForm.addEventListener('input', activateSubmit);
    }

    submitButton.setAttribute('disabled', 'true');

    const resetButton = document.getElementById('reset-btn');
    resetButton.addEventListener('click', function (event) {
        submitButton.setAttribute('disabled', 'true');
        resetForm(contactForm);
    })

    contactForm["fio"].addEventListener('blur', (event) => {
        const error = document.getElementById("fio-error");
        if (checkFio(contactForm["fio"].value)) {
            contactForm["fio"].classList.remove("error");
            contactForm["fio"].classList.add("valid");
            error.style.display = "none";
        } else {
            contactForm["fio"].classList.remove("valid");
            contactForm["fio"].classList.add("error");
            error.style.display = "block";
        }
    });

    contactForm["birthday"].addEventListener('blur', (event) => {
        if(contactForm["birthday"].value){
            contactForm["birthday"].classList.add("valid");
        }
        else{
            contactForm["birthday"].classList.remove("valid");
        }
    })

    contactForm["email"].addEventListener('blur', (event) => {
        const error = document.getElementById("email-error");
        if(checkEmail(contactForm["email"].value)){
            contactForm["email"].classList.remove("error");
            contactForm["email"].classList.add("valid");
            error.style.display = "none";
        }
        else{
            contactForm["email"].classList.remove("valid");
            contactForm["email"].classList.add("error");
            error.style.display = "block";
        }
    })

    contactForm["phone"].addEventListener('blur', (event) => {
        const error = document.getElementById("phone-error");
        if(checkPhone(contactForm["phone"].value)){
            contactForm["phone"].classList.remove("error");
            contactForm["phone"].classList.add("valid");
            error.style.display = "none";
        }
        else{
            contactForm["phone"].classList.remove("valid");
            contactForm["phone"].classList.add("error");
            error.style.display = "block";
        }
    })

    contactForm["message"].addEventListener('blur', (event) => {
        const error = document.getElementById("message-error");
        if(contactForm["message"].value){
            contactForm["message"].classList.remove("error");
            contactForm["message"].classList.add("valid");
            error.style.display = "none";
        }
        else{
            contactForm["message"].classList.remove("valid");
            contactForm["message"].classList.add("error");
            error.style.display = "block";
        }
    })

});

function resetForm(contactForm) {
    contactForm.reset();

    const elements = contactForm.querySelectorAll('.valid, .error');
    elements.forEach(element => {
        element.classList.remove('valid', 'error');
    });

    const errorMessages = contactForm.querySelectorAll('.error-message');
    errorMessages.forEach(error => {
        error.style.display = 'none';
    });
}

function checkEmail(email) {
    const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    return emailPattern.test(email);
}

function checkPhone(phone) {
    const phonePattern = /^\+7\d{10,11}$/;
    return phonePattern.test(phone);
}

function checkInput() {
    let form = document.forms["contactForm"];
    if (form["fio"].value === "") {
        return false;
    }
    if (!form["gender"].value) {
        return false;
    }
    if (!form["birthday"].value) {
        return false;
    }
    if (form["email"].value === "") {
        return false;
    }
    if (form["phone"].value === "") {
        return false;
    }
    if (form["message"].value === "") {
        return false;
    }
    return true;
}

function checkFio(fio) {
    fio = fio.trim();
    let cnt = 0;
    let startPos = 0;
    while (fio.indexOf(" ", startPos) >= 0) {
        cnt++;
        startPos = fio.indexOf(" ", startPos) + 1;
    }
    if (startPos < fio.length) {
        cnt++;
    }
    return cnt === 3;
}



function activateSubmit(event) {
    const submitButton = document.getElementById('submit-btn');
    if (checkInput()) {
        submitButton.removeAttribute('disabled');
    } else {
        submitButton.setAttribute('disabled', 'true');
    }
}