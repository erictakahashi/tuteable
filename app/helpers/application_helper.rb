module ApplicationHelper
  def action_title(title)
    content_for :title, title
    #content_tag :h1, title
  end
end
