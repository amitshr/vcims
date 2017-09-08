class Teacher < ApplicationRecord
    validates_presence_of :user_id,:teacher_name,:gender,:mobile_number,:birth_date,:birth_city,:joining_date,:salary,:marital_status
	belongs_to :user
	validates_uniqueness_of :user_id
	has_many :qualifications, dependent: :destroy
	has_many :experiences, dependent: :destroy
end
