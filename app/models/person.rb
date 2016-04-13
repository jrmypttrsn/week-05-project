class Person < ActiveRecord::Base

	validates :name, presence: true
	validates :name, uniqueness: true
	validates :person_type, presence: true

	has_many :episodes, through: :caller_appearances
	has_many :episodes, through: :guest_appearances

end