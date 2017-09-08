class Image < ApplicationRecord
	validates_presence_of :description,:size
 		
 	mount_uploader :image, AvatarUploader
end
