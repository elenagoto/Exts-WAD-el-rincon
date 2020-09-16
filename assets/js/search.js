let searchField;
let reset;
let form;

window.onload = () => {
  // Make reset button appear
  form = document.getElementById('form-search')
  searchField = document.querySelector("#global-search");
  reset = document.getElementById('reset');
  svg = document.querySelector('.target .target')

  searchField.addEventListener('focus', (e) => {
    reset.classList.add('show');
  })

  searchField.addEventListener('blur', (e) => {
    if (e.target == searchField) {
      reset.classList.remove('show');
    }
  });

  reset.addEventListener('click', (e) => {
    reset.classList.add('show');
    if (searchField instanceof HTMLInputElement) {
      searchField.focus();
    }
  })

}