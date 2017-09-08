class Address < ApplicationRecord
	validates_presence_of :user_id,:line1,:line2,:town,:district,:city,:country,:pincode,:landline_number
    validates_uniqueness_of :user_id
    belongs_to :user
end
