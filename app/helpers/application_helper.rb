module ApplicationHelper
	# TODO write spec
	def nav_link(link_text, link_path, highlights_on = false)
		class_name = current_page?(link_path) ? 'active' : nil
		if highlights_on
			class_name = request.fullpath.include?(highlights_on) ? 'active' : nil
		end

		content_tag(:li, :class => class_name) do
			link_to link_text, link_path
		end
	end
end
