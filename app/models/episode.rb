class Episode < ActiveRecord::Base

	validates :date, presence: true
	validates :description, presence: true

	has_and_belongs_to_many :songs
	has_many :people, through: :caller_appearances
	has_many :people, through: :guest_appearances

end