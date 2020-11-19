// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
var Comments;

Comments = {}

Comments.builtComment = function(comment) {
  // 1. comment avatar
  // image
  var commentAvatar = document.createElement('img');
  commentAvatar.className = 'avatar';
  commentAvatar.setAttribute('src', comment.userAvatar);
  // link
  var commentAvatarLink = document.createElement('a');
  commentAvatarLink.setAttribute('href', comment.userLink);
  commentAvatarLink.appendChild(commentAvatar);
  // div container
  var commentAvatarContainer = document.createElement('div');
  commentAvatarContainer.className = 'comment__avatar';
  commentAvatarContainer.appendChild(commentAvatarLink);

  // 2. comments text
  // user link:
  var commentUserLink = document.createElement('a');
  commentUserLink.setAttribute('href', comment.userLink);
  commentUserLink.appendChild(document.createTextNode(comment.userName));
  // time
  var commentTime = document.createElement('time');
  commentTime.className = 'comment__time';
  commentTime.setAttribute('datetime', comment.when);
  commentTime.appendChild(document.createTextNode(comment.whenInWords));
  // user p
  var commentUserContainer = document.createElement('p');
  commentUserContainer.className = 'comment__user';
  commentUserContainer.appendChild(commentUserLink);
  commentUserContainer.appendChild(commentTime);
  // comment body
  var commentBody = document.createElement('p');
  commentBody.appendChild(document.createTextNode(comment.body));
  // container comment_text div
  var commentTextContainer = document.createElement('div');
  commentTextContainer.className = 'comment__text';
  commentTextContainer.appendChild(commentUserContainer);
  commentTextContainer.appendChild(commentBody);

  // 3. comment delete
  // icon element i
  var deleteIcon = document.createElement('i');
  deleteIcon.className = 'fal fa-trash';
  // link to delete
  var deleteLink = document.createElement('a');
  deleteLink.className = 'btn btn--icon btn--warning';
  deleteLink.setAttribute('href', comment.deleteLink);
  deleteLink.setAttribute('role', 'button');
  deleteLink.setAttribute('data-remote', 'true');
  deleteLink.setAttribute('rel', 'nofollow');
  deleteLink.setAttribute('data-method', 'delete');
  deleteLink.appendChild(deleteIcon);
  deleteLink.appendChild(document.createTextNode('Delete'));
  // div comment_delete
  var commentDelete = document.createElement('div');
  commentDelete.className = 'comment__delete';
  commentDelete.appendChild(deleteLink);

  // 4. div Comment
  var commentItem = document.createElement('div');
  commentItem.className = 'comment';
  commentItem.id = 'comment-' + comment.id;
  // append comment avatar
  commentItem.appendChild(commentAvatarContainer);
  // append comments text
  commentItem.appendChild(commentTextContainer);
  // append comment delete
  commentItem.appendChild(commentDelete);

  return commentItem;
}
// Add comment function
Comments.displayComment = function(comment) {
  var newComment = Comments.builtComment(comment);
  console.log(newComment);

  var discussion = document.getElementById('discussion');
  discussion.insertBefore(newComment, discussion.firstChild);

  var textImput = document.getElementById('comment_body');
  textImput.value = '';
}

// Remove comment function
Comments.removeComment = function(commentId) {
  document.getElementById('comment-' + commentId).remove();
}