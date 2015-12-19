class Course < ActiveRecord::Base
	has_many :chapters
	
# def slug
#     title.downcase.gsub(" ", "-")  
#   end
  


# def to_param
#     "#{id}-#{slug}"
#   end

end
