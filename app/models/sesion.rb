class Sesion < ApplicationRecord
	validates_presence_of :title,:from,:to
end
