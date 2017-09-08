class Answer < ApplicationRecord
	validates_presence_of :question_id,:content
	belongs_to :question
end
