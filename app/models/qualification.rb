class Qualification < ApplicationRecord
	validates_presence_of :teacher_id,:degree,:mode,:year_of_passing,:marks_obtained,:percentage
	belongs_to :teacher
end
