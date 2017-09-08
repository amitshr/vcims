class Book < ApplicationRecord
	validates_presence_of :title,:summary,:author,:subject_id,:klass_id,:board_id
  has_many :chapters,dependent: :destroy
end
