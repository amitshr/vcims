class Result < ApplicationRecord
			validates_presence_of :student_id,:marks_obtained,:test_id,:remark
end
