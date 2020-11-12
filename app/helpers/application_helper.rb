module ApplicationHelper

  def pluralize_comments(comments)
    pluralize = 's' if comments.count != 1
    "#{comments.count} comment#{pluralize}"
  end

  def pluralize_users(tips)
    pluralize = 's' if tips.count != 1
    "#{tips.count} tip#{pluralize}"
  end
end
