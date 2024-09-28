function checkInput() {
    let form = document.forms["myForm"];
    let fields = ["fio", "gender", "age", "email", "phone", "message"];
    let messages = {
        "fio": "Пожалуйста, введите ваше ФИО.",
        "gender": "Пожалуйста, выберите ваш пол.",
        "age": "Пожалуйста, выберите ваш возраст.",
        "email": "Пожалуйста, введите ваш E-mail.",
        "phone": "Пожалуйста, введите ваш телефон.",
        "message": "Пожалуйста, введите сообщение."
    };

    for (let field of fields) {
        if (form[field].value === "") {
            alert(messages[field]);
            return false;
        }
    }
    return true;
}
