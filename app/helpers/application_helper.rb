module ApplicationHelper
#Returns the full title on a per-page basis.

def full_title(page_title)
#method definition

	base_title = "Ruby on Rails Title that shows the power of The Helper"
	#initializing the variable with the string
	
	
	if page_title.empty? #if parameter is empty do 
		base_title #output the base_title
		#implicit return
		
	else
		"#{base_title} | #{page_title}"
		#string interpolation
	end
		
	end
	
end
