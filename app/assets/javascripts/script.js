// Set variables
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

const expandElement = function (element) {
  if (element) {
    autoExpand(element);
    document.addEventListener('input', function (event) {
      if (event.target !== element) return;
      autoExpand(event.target);
    }, false);
  }
}

//Event listener
document.addEventListener("turbolinks:load", (event) => {
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
  expandElement(postContent);

  userBio = document.getElementById('user_bio');
  expandElement(userBio);

  commentBody = document.getElementById('comment_body');
  expandElement(commentBody);
});
// window.onload = () => {
  

// }