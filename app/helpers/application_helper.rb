module ApplicationHelper

  def title(page_title)
    content_for :title, page_title.to_s
  end

  def nav_link(link_text, link_path, highlights_on = false)
    if highlights_on
      class_name = request.fullpath.include?(highlights_on) ? 'active' : nil
    else
      class_name = current_page?(link_path) ? 'active' : nil
    end


    content_tag(:li, :class => class_name) do
      link_to link_text, link_path
    end
  end

end
