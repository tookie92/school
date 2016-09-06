class Student < ActiveRecord::Base
	include SearchCop
	search_scope :search do
    	attributes :nom, :prenom 

	    options :nom, :type => :fulltext
	    options :prenom, :type => :fulltext
 	end

	belongs_to :classroom
	validates_presence_of :classroom
	belongs_to :user

end
