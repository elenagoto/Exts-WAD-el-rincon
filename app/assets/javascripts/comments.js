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
  // div 
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
  

  // 3. comment delete
}