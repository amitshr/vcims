class Student < ApplicationRecord
	validates_presence_of :user_id,:student_name,:father_name,:mother_name,:gender,:birth_date,:birth_city,:mobile_number,:admission_date
	validates_uniqueness_of :user_id
	belongs_to :user
end
