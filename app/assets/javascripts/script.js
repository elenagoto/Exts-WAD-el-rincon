// ** FUNCTIONS TO EXPAND TEXTAREA INPUTS **

// This function will calculate the expansion and expand the input
const autoExpand = function (field) {
  // Reset field height
  field.style.height = 'inherit';

  // Get the computed styles for the element
  let computed = window.getComputedStyle(field);

  // Calculate the height
  let height =
    parseInt(computed.getPropertyValue('border-top-width'), 10) +
    parseInt(computed.getPropertyValue('padding-top'), 10) +
    field.scrollHeight +
    parseInt(computed.getPropertyValue('padding-bottom'), 10) +
    parseInt(computed.getPropertyValue('border-bottom-width'), 10);

  field.style.height = height + 'px';
};

// This function will call the previous function as soon as there is a textarea input passed
const expandElement = function (element) {
  if (element) {
    autoExpand(element);
    document.addEventListener(
      'input',
      function (event) {
        if (event.target !== element) return;
        autoExpand(event.target);
      },
      false
    );
  }
};

// ** FUNCTIONS FOR FILTERING SEARCH

const tagList = function (taglist) {
  let tagsArray = [];
  for (let tag of taglist) {
    tagsArray.push(tag.innerText.toLowerCase());
  }
  return tagsArray;
};

const filter = function (tag) {
  const postsList = document.getElementsByClassName('card');
  // Get list of posts
  for (let post of postsList) {
    if (!post.classList.contains('invisible')) {
      let postID = post.id;
      postTagsList = tagList(document.querySelectorAll(`#${postID} .btn--tag`));
      if (postTagsList.indexOf(tag) === -1) {
        post.classList.add('invisible');
      }
    }
  }
};

//** EVENT LISTENER */
document.addEventListener('turbolinks:load', (event) => {
  // Make hamburger work
  let hamburger = document.getElementById('hamburger');
  let show = document.getElementById('show');

  hamburger.addEventListener('click', (e) => {
    hamburger.classList.toggle('toggle');
    show.classList.toggle('visible');
  });

  // Make reset button appear
  const searchField = document.querySelector('#global-search');
  const reset = document.getElementById('reset');

  if (searchField) {
    searchField.addEventListener('focus', (e) => {
      reset.classList.add('show');
    });

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
    });
  }

  // Make post text input grow with content
  const postContent = document.getElementById('post_body');
  expandElement(postContent);

  const userBio = document.getElementById('user_bio');
  expandElement(userBio);

  const commentBody = document.getElementById('comment_body');
  expandElement(commentBody);

  // Filter posts
  const tagsList = document.getElementById('tagsList');

  if (tagsList) {
    // Event listener
    tagsList.addEventListener('click', function (e) {
      const classList = e.target.classList;

      // If tag is not selected
      if (classList.contains('btn--tag') && !classList.contains('selected')) {
        e.target.classList.add('selected');
        tag = e.target.innerText.toLowerCase();
        filter(tag);

        // If tag is selected
      } else if (
        classList.contains('btn--tag') &&
        classList.contains('selected')
      ) {
        e.target.classList.remove('selected');
        // make all cards visible
        const cards = document.getElementsByClassName('card');
        for (let card of cards) {
          card.classList.remove('invisible');
        }
        // get selected tags
        const selectedTags = tagList(
          document.getElementsByClassName('selected')
        );
        console.log(selectedTags);
        // call filter for selected tags
        selectedTags.forEach(filter);
      }
    });
  }

  // Choices.js

  const inputMultiselect = document.querySelector('#post_tag_ids');
  if (inputMultiselect) {
    const choices = new Choices(inputMultiselect);
  }
});
