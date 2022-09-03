let cartInfo1 = document.getElementById('cartInfo')


let object = Object.keys(localStorage)
for (key of object) {
    let item = JSON.parse(localStorage.getItem(key))
console.log(item);
    if (cartInfo1.querySelector(`[data-id="${item.id}"]`)) {
        continue;
    }

    const cartItemHTML1 = `
                <div class="prod" data-id="${item.id}">
                    <img src="${item.imgSrc}" alt="${item.title}">
                    <div class="prod__wrapper">
                        <div class="procInfo">
                            <p class="title">${item.title}</p>
                            <div class="formWrapper">
                                <button type="button" data-minus>-</button>
                                <input type="text" data-value="${item.counter}">
                                <button type="button" data-plus>+</button>
                            </div>
                        </div>
                        <p class="priceOdProd">${item.price}</p>
                        <button type="button" data-delete="${item.id}" class="deleteProd"><i class="bi bi-trash"></i></button>
                    </div>
                </div>`;

    cartInfo1.insertAdjacentHTML('afterbegin', cartItemHTML1);
}

let itemsInCart = cartInfo1.querySelectorAll('.prod')
for (let itemOfCart of itemsInCart) {
    console.log(itemOfCart);
}
