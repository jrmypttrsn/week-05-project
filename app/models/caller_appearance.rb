class CallerAppearance < ActiveRecord::Base

	validates :date, presence: true

	belongs_to :episode
	belongs_to :person
	
end