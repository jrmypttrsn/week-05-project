class Music < ActiveRecord::Base

	validates :song, presence: true
	validates :artist, presence: true
	validates :album, presence: true
	validates :record_label, presence: true

	has_and_belongs_to_many :episodes

end