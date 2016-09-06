class Classroom < ActiveRecord::Base
	has_many :students
	validates_presence_of :nom
	has_one :user
end
