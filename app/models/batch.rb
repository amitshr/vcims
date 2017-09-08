class Batch < ApplicationRecord
   validates_presence_of :room_id,:batch_name,:course_id,:sesion_id,:status,:staring_date,:filled_seats
   belongs_to :course
end
