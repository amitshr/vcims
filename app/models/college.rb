class College < ApplicationRecord
	validates_presence_of :college_name,:city,:state,:university_id,:college_type,:education_mode,:contact_number
      belongs_to :university
end
