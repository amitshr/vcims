class University < ApplicationRecord
	validates_presence_of :short_name,:full_name,:state
	validates_uniqueness_of :short_name
	has_many :colleges, dependent: :destroy
end
