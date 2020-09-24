// const hamburger = document.getElementById('hamburger');
// const show = document.getElementById('show');


// hamburger.addEventListener('click', (e) => {
//   if (e.target.classList.contains('hamburger')) {
//     e.target.classList.toggle('toggle');
//     show.classList.toggle('visible');
//     console.log(show);
//   }
// });

let hamburger;
let show;

let searchField;
let reset;
let form;

window.onload = () => {
  // Make hamburger work
  hamburger = document.getElementById('hamburger');
  show = document.getElementById('show');

  hamburger.addEventListener('click', (e) => {
    hamburger.classList.toggle('toggle');
    show.classList.toggle('visible');
  });

  // Make reset button appear
  form = document.getElementById('form-search')
  searchField = document.querySelector("#global-search");
  reset = document.getElementById('reset');
  svg = document.querySelector('.target .target')

  if (searchField) {
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

}