let priceOfProd = document.getElementById('priceOfProd'),
    cartCount = document.getElementById('cartCount'),
    cartInfo = document.getElementById('cartInfo'),
    cartModal = document.getElementById('cartModal'),
    cart = document.getElementById('cart')

    // window.addEventListener('load', () => {
    //     if (localStorage.length != 0) {
    //         let itemsInCart = cartInfo.querySelectorAll('.prod')
            
    //         for (let itemOfCart of itemsInCart) {
    //             console.log(itemOfCart);
    //         }
            
    //         let object = Object.keys(localStorage)
    //         for (key of object) {
    //             let item = JSON.parse(localStorage.getItem(key))

    //             if (cartInfo.querySelector(`[data-id="${item.id}"]`)) {
    //                 continue;
    //             }

    //             const cartItemHTML = `
    //             <div class="prod" data-id="${item.id}">
    //                 <img src="${item.imgSrc}" alt="${item.title}">
    //                 <div class="prod__wrapper">
    //                     <div class="procInfo">
    //                         <p class="title">${item.title}</p>
    //                         <div class="formWrapper">
    //                             <button type="button" data-minus>-</button>
    //                             <input type="text" data-value="${item.counter}">
    //                             <button type="button" data-plus>+</button>
    //                         </div>
    //                     </div>
    //                     <p class="priceOdProd">${item.price}</p>
    //                     <button type="button" data-delete="${item.id}" class="deleteProd"><i class="bi bi-trash"></i></button>
    //                 </div>
    //             </div>`;

    //             cartInfo.insertAdjacentHTML('afterbegin', cartItemHTML);
    //         }
    
    //     }
    // })

cart.addEventListener('mouseover', () => {
    if (cartInfo.querySelector('.prod')) {
        cartModal.style.opacity = '1'
        cartModal.style.zIndex = '2222'
    } else {
        cartModal.style.opacity = '0'
        cartModal.style.zIndex = '-222'
    }
})
cart.addEventListener('mouseout', () => {
    cartModal.style.opacity = '0'
    cartModal.style.zIndex = '-222'
})


window.addEventListener('click', function (e) {
    if (e.target.hasAttribute('data-addToCart')) {
        const card = e.target.closest('.cards');



        const productInfo = {
            id: card.dataset.id,
            imgSrc: card.querySelector('img').getAttribute('src'),
            title: card.querySelector('.title').innerText,
            price: card.querySelector('.price').innerText,
            counter: card.querySelector('[data-counter]').dataset.counter,
        };


        localStorage.setItem(productInfo.id, JSON.stringify(productInfo))

        let object = Object.keys(localStorage)
        for (let key of object) {
            let item = JSON.parse(localStorage.getItem(key))



            if (cartInfo.querySelector(`[data-id="${item.id}"]`)) {
                continue;
            }

            const cartItemHTML = `
                <div class="prod" data-id="${item.id}">
                    <img src="${item.imgSrc}" alt="${item.title}">
                    <div class="prod__wrapper">
                        <div class="procInfo">
                            <p class="title">${item.title}</p>
                            <div class="formWrapper">
                                <button type="button" data-minus>-</button>
                                <input type="text" data-value="1">
                                <button type="button" data-plus>+</button>
                            </div>
                        </div>
                        <p class="priceOdProd">${item.price}</p>
                        <button type="button" data-delete="${item.id}" class="deleteProd"><i class="bi bi-trash"></i></button>
                    </div>
                </div>`;

            cartInfo.insertAdjacentHTML('afterbegin', cartItemHTML);
        }


        cartCount.textContent++;
        priceOfProd.textContent = parseInt(priceOfProd.textContent) + parseInt(productInfo.price) + ' Р.'





        const itemInCart = cartInfo.querySelector(`[data-id="${productInfo.id}"]`);


        if (itemInCart) {
            let counterElement = itemInCart.querySelector('input');
            counterElement.value = counterElement.dataset.value
            counterElement.addEventListener('blur', () => {
                counterElement.dataset.value = counterElement.value
                productInfo.counter = counterElement.dataset.value
                priceOfProd.textContent = parseInt(priceOfProd.textContent) + (parseInt(productInfo.price) * (parseInt(counterElement.value) - 1)) + ' Р.'
                for (key of object) {
                    localStorage.clear(key)
                }
                localStorage.setItem(productInfo.id, JSON.stringify(productInfo))
            })

            card.querySelector('button').disabled = true

            let minus = itemInCart.querySelector('[data-minus]');
            let plus = itemInCart.querySelector('[data-plus]');
            let deleteProd = itemInCart.querySelector('[data-delete]');

            deleteProd.addEventListener('click', () => {
                itemInCart.remove()
                card.querySelector('button').disabled = false
                cartCount.textContent--
                for (key of object) {
                    localStorage.clear(key)
                }
                priceOfProd.textContent = parseInt(priceOfProd.textContent) - parseInt(productInfo.price) + ' Р.'
            })
            minus.addEventListener('click', () => {
                --counterElement.dataset.value;
                --productInfo.counter
                for (key of object) {
                    localStorage.clear(key)
                }
                localStorage.setItem(productInfo.id, JSON.stringify(productInfo))
                counterElement.value = counterElement.dataset.value
                if (parseInt(counterElement.dataset.value) < 1) {
                    itemInCart.remove()
                    card.querySelector('button').disabled = false
                    cartCount.textContent--
                    for (key of object) {
                        localStorage.clear(key)
                    }
                }
                priceOfProd.textContent = parseInt(priceOfProd.textContent) - parseInt(productInfo.price) + ' Р.'
            })
            plus.addEventListener('click', () => {
                ++counterElement.dataset.value;
                ++productInfo.counter
                for (key of object) {
                    localStorage.clear(key)
                }
                localStorage.setItem(productInfo.id, JSON.stringify(productInfo))
                counterElement.value = counterElement.dataset.value
                priceOfProd.textContent = parseInt(priceOfProd.textContent) + parseInt(productInfo.price) + ' Р.'
            })
        }


    }
    let object1 = Object.keys(localStorage)
    for (let key of object1) {
        let item = JSON.parse(localStorage.getItem(key))
        console.log(item);
    }

})

