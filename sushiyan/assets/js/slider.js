let prev = document.getElementById('prev'),
    next = document.getElementById('next'),
    items = document.querySelector('.slider__items'),
    count = 0;

next.addEventListener('click', ()=>{
    if(count == 0){
        count++;
        items.style.left = '-1280px'
    }else{
        count--;
        items.style.left = '0px'
    }
})
prev.addEventListener('click', ()=>{
    if(count == 1){
        count--;
        items.style.left = '0px'
    }else{
        count++;
        items.style.left = '-1280px'
    }
})

