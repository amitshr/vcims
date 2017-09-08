class Query < ApplicationRecord
		validates_presence_of :email,:mobile_number,:question
end
