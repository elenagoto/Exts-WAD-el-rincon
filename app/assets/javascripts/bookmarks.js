// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
var Bookmarks;

Bookmarks = {};

// Remove bookmark function
Bookmarks.removePost = function(postId) {
  post = document.getElementById('post-' + postId);

  if (post) {
    post.remove();
  } else {
    buttonDelete = document.querySelector('#form-post-' + postId + ' .favorite-delete');
    buttonAdd = document.querySelector('#form-post-' + postId + ' .favorite-add');
    buttonDelete.classList.add('invisible') ;
    buttonAdd.classList.remove('invisible');
  }
}

// Add bookmark function
Bookmarks.addPost = function(postId) {
  buttonDelete = document.querySelector('#form-post-' + postId + ' .favorite-delete');
  buttonAdd = document.querySelector('#form-post-' + postId + ' .favorite-add');
  buttonDelete.classList.remove('invisible') ;
  buttonAdd.classList.add('invisible');
}