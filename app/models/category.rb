class Category < ApplicationRecord
	validates_presence_of :category_name
	validates_uniqueness_of :category_name
    has_many :users, dependent: :destroy
end
