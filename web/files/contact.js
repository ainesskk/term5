function checkInput(){
    let form = document.forms["contactForm"];
    if (form["fio"].value === "") {
        alert("Пожалуйста, введите ваше ФИО.");
        form["fio"].focus();
        return false;
    }
    if (!checkFio(document.forms["contactForm"])) return false;
    if (!form["gender"].value) {
        alert("Пожалуйста, выберите ваш пол.");
        return false;
    }
    if (form["age"].value === "") {
        alert("Пожалуйста, выберите ваш возраст.");
        form["age"].focus();
        return false;
    }
    if (form["email"].value === "") {
        alert("Пожалуйста, введите ваш e-mail.");
        form["email"].focus();
        return false;
    }
    if (form["phone"].value === "") {
        alert("Пожалуйста, введите ваш телефон.");
        form["phone"].focus();
        return false;
    }
    if (!checkPhone(document.forms["contactForm"])) return false;
    if (form["message"].value === "") {
        alert("Пожалуйста, введите сообщение.");
        form["message"].focus();
        return false;
    }
    return true;
}

function checkFio(formName){
    let fio = formName["fio"].value;
    let cnt = 0;
    let startPos=0;
    while(fio.indexOf(" ",startPos)>=0){
        cnt++;
        startPos=fio.indexOf(" ",startPos)+1;
    }
    if (startPos<fio.length) {
        cnt++;
    }
    if(cnt !== 3){
        alert("Пожалуйста, введите корректные данные ФИО.");
        formName["fio"].focus();
        return false;
    }
    else return true;
}

function checkPhone(formName){
    let phone = formName["phone"];
    let substr = phone.value.substring(1,phone.value.length-1);
    if(phone.value[0]+phone.value[1] === "+7"){
        if(!isNaN(substr)){
            if((phone.value.length >= 10)&&(phone.value.length <= 12)){
                return true;
            }
            else{
                alert("Пожалуйста, введите корректный номер телефона.");
                phone.focus();
                return false;
            }
        }
        else{
            alert("Пожалуйста, используйте только цифры для ввода номера.");
            phone.focus();
            return false;
        }
    }
    else{
        alert("Номер должен начинаться с '+7'.");
        phone.focus();
        return false;
    }
}