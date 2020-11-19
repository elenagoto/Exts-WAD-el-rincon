// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
var Tags;

Tags = {};

Tags.builtTag = function(tag) {
  // 1. link to tag name
  var tagLink = document.createElement('a');
  tagLink.setAttribute('href', tag.tagLink);
  tagLink.appendChild(document.createTextNode(tag.name));

  // 2. link to delete
  // delete icon
  var deleteIcon = document.createElement('i');
  deleteIcon.className = 'fal fa-times';
  // delete span
  var deleteText = document.createElement('span');
  deleteText.className = 'sr-only';
  deleteText.appendChild(document.createTextNode(tag.deleteText));

  // delete link
  var deleteLink = document.createElement('a');
  deleteLink.setAttribute('href', tag.deleteLink);
  deleteLink.setAttribute('role', 'button');
  deleteLink.setAttribute('data-remote', 'true');
  deleteLink.setAttribute('rel', 'nofollow');
  deleteLink.setAttribute('data-method', 'delete');
  deleteLink.appendChild(deleteIcon);
  deleteLink.appendChild(deleteText);

  // 3. tag
  var tagElement = document.createElement('li');
  tagElement.className = 'btn btn--tag btn--tag--delete';
  tagElement.id = 'tag-' + tag.id;
  // append tag name
  tagElement.appendChild(tagLink);
  // append delete link
  tagElement.appendChild(deleteLink);

  return tagElement;
}

Tags.displayTag = function(tag) {
  var newtag = Tags.builtTag(tag);

  var tagslist = document.getElementById('tags-list');
  tagslist.appendChild(newtag);

  var textImput = document.getElementById('tag_name');
  textImput.value = '';
}

Tags.removeTag = function(tagId) {
  document.getElementById('tag-' + tagId).remove();
}