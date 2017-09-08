class Blog < ApplicationRecord
	validates_presence_of :title,:description
	has_many :posts
end
