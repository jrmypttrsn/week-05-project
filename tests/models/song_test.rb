require_relative  "../test_helper.rb"
 
class SongTest < Minitest::Test
 
 def test_valid_at_creation
   s = Song.new(song_title: "Fuckers", artist: "Savages", album: "Fuckers/Dream Baby Dream", 
    record_label: "Matador Records")
   assert(s.valid?, "should be valid with a song, artist, album, and record label")
 end

 def test_invalid_without_song
   s = Song.new(song_title: "Fuckers", artist: "Savages", album: "Fuckers/Dream Baby Dream", 
    record_label: "Matador Records")
   assert(s.valid?, "should be valid with a date and a description")

   s.song_title = nil
   refute(s.valid?, "should be invalid without a song title")
 end

 def test_invalid_without_artist
   s = Song.new(song_title: "Fuckers", artist: "Savages", album: "Fuckers/Dream Baby Dream", 
    record_label: "Matador Records")
   assert(s.valid?, "should be valid with a date and a description")

   s.artist = nil
   refute(s.valid?, "should be invalid without an album")
 end

 def test_invalid_without_album
   s = Song.new(song_title: "Fuckers", artist: "Savages", album: "Fuckers/Dream Baby Dream", 
    record_label: "Matador Records")
   assert(s.valid?, "should be valid with a date and a description")

   s.album = nil
   refute(s.valid?, "should be invalid without an artist")
 end

 def test_invalid_without_record_label
   s = Song.new(song_title: "Fuckers", artist: "Savages", album: "Fuckers/Dream Baby Dream", 
    record_label: "Matador Records")
   assert(s.valid?, "should be valid with a date and a description")

   s.record_label = nil
   refute(s.valid?, "should be invalid without a record label")
 end
end