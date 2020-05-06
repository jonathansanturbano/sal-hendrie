import "bootstrap";
import { initModalOnClick } from '../components/modal';
import { initSwiper } from '../components/swiper';
// import { initCart } from '../components/cart';

// STORING ON LOCALSTORAGE

if (document.querySelector('.buy')) {
  const cart = document.querySelector('.buy')
  cart.addEventListener('click', () => {
    cartNumbers();
  })
}

const cartNumber = document.querySelector('.cart-number')

initModalOnClick();
initSwiper();
onLoadCartNumbers();


function onLoadCartNumbers() {
  let productNumbers = localStorage.getItem('cartNumbers');
    productNumbers = parseInt(productNumbers)
    if( productNumbers ) {
      cartNumber.textContent = productNumbers
  } else {
    return
  }
}

function cartNumbers() {
  let productNumbers = localStorage.getItem('cartNumbers');
  productNumbers = parseInt(productNumbers)
  if( productNumbers ) {
    localStorage.setItem('cartNumbers', productNumbers + 1)
    cartNumber.textContent = (productNumbers + 1)
  } else {
    localStorage.setItem('cartNumbers', 1)
    cartNumber.textContent = 1
  }
  setItems();
}

function setItems() {
  let cartItems = localStorage.getItem('productsInCart')
  const product = (document.querySelector('.product')).textContent
  const price = document.querySelector('.product-price').textContent
  let productDetails = {
    price: parseFloat(price),
    quantity: 1,
  }
  cartItems = JSON.parse(cartItems)
  if (cartItems != null) {
    if(cartItems[product] == undefined){
      cartItems = {
        ...cartItems,
        [product]: productDetails
      }
    } else {
      cartItems[product].quantity += 1;
    }
  } else {
    cartItems = {
      [product]: productDetails
    }
  }
  localStorage.setItem('productsInCart', JSON.stringify(cartItems));
}

// DISPLAYING ON BASKET PAGE
function displayBasket() {
  const content = document.querySelector('.basket-content')
  let cartItems = localStorage.getItem('productsInCart')
  cartItems = JSON.parse(cartItems)
  for (let [key, value] of Object.entries(cartItems)) {
    let htmlInput =  `
      <div class="item-grid">
        <div>
          ${key}
        </div>
        <div>
          <span class="quantity-toggle" id="minus">-</span>
          ${value.quantity}
          <span class="quantity-toggle" id="plus">+</span>
        </div>
        <div>
          ${value.price * value.quantity}
        </div>
      </div>
    </div>
    `
    content.insertAdjacentHTML("afterbegin", htmlInput)
  }
}

displayBasket();

// function toggleQuantity() {
//   let minus = document.querySelectorAll("#minus")
//   let plus = document.querySelectorAll("#plus")
//   console.log(minus)
//   console.log(plus)
//   minus.forEach(element){
//     element.addEventListener('click', function(){
//       console.log(element.text_node)
//     })
//   }
// }

// toggleQuantity();
