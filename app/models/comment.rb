class Comment < ApplicationRecord
	validates_presence_of :content,:user_id,:post_id,:status
	    belongs_to :post
	    belongs_to :user
end
