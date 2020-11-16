module RolesHelper
  def can_edit_post?(post)
    case current_user.role
    when 'admin' then true
    when 'author' then post.user == current_user
    else false
    end
  end

  def can_edit_user?(user)
    case current_user.role
    when 'admin' then true
    when 'author', 'registered' then user == current_user
    else false
    end
  end

  def can_delete_comment?(comment)
    case current_user.role
    when 'admin' then true
    when 'author', 'registered' then comment.user == current_user
    else false
    end
  end
end