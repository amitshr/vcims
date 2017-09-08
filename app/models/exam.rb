class Exam < ApplicationRecord
	validates_presence_of :batch_id,:test_id,:center_id
end
