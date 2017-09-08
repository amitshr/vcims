class Board < ApplicationRecord
	validates_presence_of :short_name,:state,:full_name
	validates_uniqueness_of :short_name
	has_many :schools
end
