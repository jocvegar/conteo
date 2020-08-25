module ApplicationHelper
	def bootstrap_class_for(flash_type)
	  { success: "alert-success", error: "alert-danger", alert: "alert-warning", notice: "alert-info" }[flash_type] || flash_type.to_s
	end

	def flash_messages
		flash.each do |msg_type, message|
			puts "flash_msg_type: #{msg_type.class}"
			puts "flash_message: #{message}"
			concat(
				content_tag(:div, id: "flash-wrapper", class: "container-fluid", style: "padding-top:0.5rem;") do
					concat(
						content_tag(:div, message, class: "alert #{bootstrap_class_for(msg_type.to_sym)}", role: "alert") do
							concat content_tag(:span, message.html_safe, class: 'message')
						end
					)
				end
			)
		end
		nil
	end

	def title_helper(title = '')
		if title.empty?
			"Conteo"
		else
			"Conteo | " + title
		end
	end

	def active_class(link_path)
		current_page?(link_path) ? "active" : ""
	end
end
