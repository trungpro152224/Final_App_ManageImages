class Album < ApplicationRecord
	has_many :pictures, dependent: :destroy

	
end
