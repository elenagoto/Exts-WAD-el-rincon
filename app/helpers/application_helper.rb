module ApplicationHelper
  # Default avatar
  AVATAR_1 = "passifloras/curuba_1.jpeg"
  AVATAR_2 = "passifloras/granadilla.jpeg"
  AVATAR_3 = "passifloras/gulupa_2.jpeg"
  AVATAR_4 = "passifloras/maracuya_1.jpeg"
  AVATAR_5 = "passifloras/gulupa_1.jpeg"
  AVATAR_6 = "passifloras/maracuya_2.jpeg"

  def default_avatar(user)
    if user.avatar.attached?
      user.avatar
    else
      case
        when user.name.blank?            then AVATAR_1
        when user.name[0].downcase < 'e' then AVATAR_1
        when user.name[0].downcase < 'j' then AVATAR_2
        when user.name[0].downcase < 'o' then AVATAR_3
        when user.name[0].downcase < 't' then AVATAR_4
        when user.name[0].downcase < 'w' then AVATAR_5
        else AVATAR_6
      end
    end

  end

  def pluralize_comments(comments)
    pluralize = 's' if comments.count != 1
    "#{comments.count} comment#{pluralize}"
  end

  def pluralize_users(tips)
    pluralize = 's' if tips.count != 1
    "#{tips.count} tip#{pluralize}"
  end
end
