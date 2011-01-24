module ApplicationHelper
  def logo(filename, alt, class_name)
    image_tag(filename, :alt => alt, :class => class_name)
  end
  def title
    base_title = "Ruby on Rails Tutorial Sample App"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
end
