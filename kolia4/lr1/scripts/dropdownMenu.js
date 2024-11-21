document.querySelectorAll('.dropdown-container').forEach(item => {
        item.addEventListener('mouseover', () => {
            item.querySelector('.dropdown').style.height = 'auto';
            item.querySelector('.dropdown').style.opacity = '1';
            item.querySelector('.dropdown').style.overflow = 'visible';
        });
        item.addEventListener('mouseout', () => {
            item.querySelector('.dropdown').style.height = '0';
            item.querySelector('.dropdown').style.opacity = '0';
            item.querySelector('.dropdown').style.overflow = 'hidden';
        });
    });
