class Experience < ApplicationRecord
     validates_presence_of :teacher_id,:organization_name,:from,:to,:status
     belongs_to :teachers
end
