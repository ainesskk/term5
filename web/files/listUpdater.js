const listOptions = window.document.querySelectorAll('.list-option');
listOptions.forEach(li => {
    li.addEventListener('mouseover', setHeart);
    li.addEventListener('mouseout', removeHeart);
});

function setHeart(event) {
    const item = event.currentTarget;
    if(!item.querySelector('.list-img')) {
        const imgPrev = document.createElement('img');
        imgPrev.src = "img/heart.png";
        imgPrev.classList.add('list-img');
        imgPrev.style.marginRight = '5px';
        item.prepend(imgPrev);
        const imgNext = document.createElement('img');
         imgNext.src = "img/heart.png";
         imgNext.classList.add('list-img');
         imgNext.style.marginLeft = '5px';
         item.append(imgNext);
    }
}

function removeHeart(event) {
    const item = event.currentTarget;
    const img = item.querySelectorAll('.list-img');
    if (img) {
        img.forEach(heart => {
            item.removeChild(heart);
        })
    }
}

const submenu = document.getElementById('submenu-item');
submenu.addEventListener('mouseover', showMenu);
submenu.addEventListener('mouseout', hideMenu);

function showMenu(event) {
    const items = document.querySelectorAll('.submenu');
    items.forEach(item => {
        item.style.height = "auto";
        item.style.overflow = "visible";
        item.style.opacity = "1";
    });
}

function hideMenu(event) {
    const items = document.querySelectorAll('.submenu');
    items.forEach(item => {
        item.style.height = "0";
        item.style.overflow = "hidden";
        item.style.opacity = "0";
    });
}