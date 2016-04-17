class Soul < ActiveRecord::Base

	validates :name, presence: true
	validates :occupation, presence: true

	belongs_to :division
	has_and_belongs_to_many :demons

end