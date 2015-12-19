class Chapter < ActiveRecord::Base
belongs_to :course
has_many :lessons

# acts_as_list :scope => :course

default_scope { order("position ASC") }
	
	
end
