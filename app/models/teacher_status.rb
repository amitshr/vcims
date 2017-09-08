class TeacherStatus < ApplicationRecord
	validates_presence_of :user_id,:batch_id
end
