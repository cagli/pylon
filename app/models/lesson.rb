class Lesson < ActiveRecord::Base
belongs_to :chapter
has_one :course, through: :chapter

default_scope { order("id ASC") }
end