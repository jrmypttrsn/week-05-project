class Song < ActiveRecord::Base

	validates :song_title, presence: true
	validates :artist, presence: true
	validates :album, presence: true
	validates :record_label, presence: true

	has_and_belongs_to_many :episodes

end