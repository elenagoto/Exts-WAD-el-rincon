// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
var Users;

Users = {};

// Remove user function
Users.removeUser = function(userId) {
  document.getElementById('user-' + userId).remove();
}