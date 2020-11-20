module MarkdownHelper
  require 'redcarpet'

  def markdown(text)
    render_options = {
      autolink: true,
      filer_html: true,
      hard_wrap: true,
      link_attributes: { rel: 'nofollow' },
      prettify: true,
      no_intra_emphasis: true,
      safe_links_only: true
    }
    Markdown.new(text, *render_options).to_html.html_safe
  end

end