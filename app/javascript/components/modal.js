const initModalOnClick = () => {
  const modal = document.querySelector('.smodal');
  const dropdown = document.getElementById('dropdown');
  const close = document.querySelector('.close');
  const menu = document.querySelector('.links');
  const links = menu.querySelectorAll('a');
  dropdown.addEventListener('click', (event) => {
    modal.style.display = 'flex';
  });
  close.addEventListener('click', (event) => {
    modal.style.display = 'none';
  });
}

export { initModalOnClick };
