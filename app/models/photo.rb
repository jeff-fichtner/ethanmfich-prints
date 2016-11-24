class Photo < ApplicationRecord
	validates_attachment_presence :img
	
end
