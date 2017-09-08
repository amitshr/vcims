class Page < ApplicationRecord
     validates_presence_of :chapter_id,:title,:sub_title,:page_number,:content
     belongs_to  :chapter
     has_many :questions, dependent: :destroy
end
