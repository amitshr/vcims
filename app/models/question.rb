class Question < ApplicationRecord
       attr_accessor :que_type

       validates_presence_of :content,:page_id,:question_number,:question_type
       belongs_to :page
       has_one :answer,dependent: :destroy
end
