class Registration < ApplicationRecord
	validates_presence_of :registration_number, :registration_date, :student_name, :email, :center, :course
end
