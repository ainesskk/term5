const pagesArr = {
    "Главная страница": "main-views",
    "Обо мне": "aboutme-views",
    "Мои интересы": "interests-views",
    "Фотоальбом": "album-views",
    "Контакт": "contact-views",
    "Учёба": "study-views",
    "Тест": "test-views",
    "История просмотра": "history-views"
};

let storage = window.sessionStorage;

Object.keys(pagesArr).forEach(key => {
    if (storage.getItem(key) === null) {
        storage.setItem(key, "0");
    }
    output(key, storage.getItem(key));
});

document.addEventListener('DOMContentLoaded', (event) => {
    console.log("Page title:", document.title);
    count(document.title);
});

function count(pageName) {
    console.log("Counting for page:", pageName);
    let cnt = storage.getItem(pageName);
    if (cnt === null) {
        cnt = 0;
    }
    cnt++;
    storage.setItem(pageName, cnt);
    output(pageName, cnt);
}



function output(pageName, cnt) {

    const td = document.getElementById(pagesArr[pageName]);
    if (document.title === "История просмотра") {
        td.textContent = cnt.toString();
    }
}