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
let postContent;

const autoExpand = function (field) {

  // Reset field height
  field.style.height = 'inherit';

  // Get the computed styles for the element
  var computed = window.getComputedStyle(field);

  // Calculate the height
  var height = parseInt(computed.getPropertyValue('border-top-width'), 10) +
    parseInt(computed.getPropertyValue('padding-top'), 10) +
    field.scrollHeight +
    parseInt(computed.getPropertyValue('padding-bottom'), 10) +
    parseInt(computed.getPropertyValue('border-bottom-width'), 10);

  field.style.height = height + 'px';

};

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

  // Make post text input grow with content
  postContent = document.getElementById('post_body');

  if (postContent) {
    autoExpand(postContent);
    document.addEventListener('input', function (event) {
      if (event.target !== postContent) return;
      autoExpand(event.target);
    }, false);
  }

}