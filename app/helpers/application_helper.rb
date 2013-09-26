module ApplicationHelper
	def page_full_title(page_title)
	    base_title = "Xiaoshoutai Microblog"
	    if page_title.empty?
	      	base_title
	    else
	      	"#{base_title} | #{page_title}"
	    end
  	end
end
