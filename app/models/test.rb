class Test < ApplicationRecord
	validates_presence_of :test_code,:note,:course_id,:test_type,:content,:marks,:time_duration
    		
	has_many :results
end
