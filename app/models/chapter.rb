class Chapter < ApplicationRecord
		validates_presence_of :book_id,:title,:summary,:chapter_number
		has_many :pages, dependent: :destroy
		belongs_to :book
end
