class Division < ActiveRecord::Base
	
	validates :name, presence: true
	validates :circle_level, presence: true

	has_many :demons
	has_many :souls

end