class Video < ApplicationRecord
	validates_presence_of :title,:video_length,:source,:transcript
end
