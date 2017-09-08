class School < ApplicationRecord
	validates_presence_of :school_name,:city,:state,:board_id,:school_type,:contact_number
    belongs_to :board
end
