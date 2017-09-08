class Center < ApplicationRecord
	validates_presence_of :user_id,:center_name,:center_incharge,:mobile_number
    belongs_to :user
    has_many :rooms, dependent: :destroy
end
