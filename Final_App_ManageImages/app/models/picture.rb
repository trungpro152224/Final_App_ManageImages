class Picture < ApplicationRecord
	
	belongs_to :album, counter_cache: true
	belongs_to :user
	
	has_attached_file :image, styles: {large: "600x600>", medium: "300x300>", thumb: "150x150>"}
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

	validates :title, presence: true
	validates :description, presence: true
	validates :is_public, inclusion: { in: [true, false] }

	scope :publics, -> {where(is_public: true) }
end
