class Post < ApplicationRecord
		validates_presence_of :content,:user_id,:blog_id,:status
	    belongs_to :blog
	    has_many :comments
end
