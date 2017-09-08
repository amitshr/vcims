class News < ApplicationRecord
	validates_presence_of :user_id,:content,:image_id
end
