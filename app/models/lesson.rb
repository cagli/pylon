class Lesson < ActiveRecord::Base
belongs_to :chapter
has_one :Course, through: :chapter
end