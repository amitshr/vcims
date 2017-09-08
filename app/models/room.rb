class Room < ApplicationRecord
	validates_presence_of :center_id,:seats,:room_number
	belongs_to :center
	
end
