class Qualification < ApplicationRecord
	validates_presence_of :teacher_id,:degree,:mode,:year_of_passing,:percentage
	belongs_to :teacher
end
