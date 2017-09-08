class Course < ApplicationRecord
	validates_presence_of :course_name,:board_id,:subject_id,:klass_id,:fee,:duration,:description 
	has_many :batches , dependent: :destroy
end
