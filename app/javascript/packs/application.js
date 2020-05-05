import "bootstrap";
import { initModalOnClick } from '../components/modal';
import { initSwiper } from '../components/swiper';
// import { initCart } from '../components/cart';

// STORING ON LOCALSTORAGE

const cart = document.querySelector('.buy')
const cartNumber = document.querySelector('.cart-number')
const product = document.querySelector('.product').textContent
const price = document.querySelector('.product-price').textContent

let productDetails = {
  price: parseFloat(price),
  quantity: 1,
}

initModalOnClick();
initSwiper();
onLoadCartNumbers();

cart.addEventListener('click', () => {
  cartNumbers();
})

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
  let cartItems = localStorage.getItem('productsInCart')
  console.log(Object.entries(cartItems))
}

displayBasket();
