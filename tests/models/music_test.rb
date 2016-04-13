require_relative  "../test_helper"
 
 class MusicTest < Minitest::Test
   
   def test_valid_at_creation
     m = Music.new(song: "Fuckers", artist: "Savages", album: "Fuckers/Dream Baby Dream", 
      record_label: "Matador Records")
     assert(m.valid?, "should be valid with a song, artist, album, and record label")
   end

   def test_invalid_without_song
     m = Music.new(song: "Fuckers", artist: "Savages", album: "Fuckers/Dream Baby Dream", 
      record_label: "Matador Records")
     assert(m.valid?, "should be valid with a date and a description")

     m.song = nil
     refute(m.valid?, "should be invalid without a song")
   end

   def test_invalid_without_artist
     m = Music.new(song: "Fuckers", artist: "Savages", album: "Fuckers/Dream Baby Dream", 
      record_label: "Matador Records")
     assert(m.valid?, "should be valid with a date and a description")

     m.artist = nil
     refute(m.valid?, "should be invalid without an album")
   end

   def test_invalid_without_album
     m = Music.new(song: "Fuckers", artist: "Savages", album: "Fuckers/Dream Baby Dream", 
      record_label: "Matador Records")
     assert(m.valid?, "should be valid with a date and a description")

     m.album = nil
     refute(m.valid?, "should be invalid without an artist")
   end

   def test_invalid_without_record_label
     m = Music.new(song: "Fuckers", artist: "Savages", album: "Fuckers/Dream Baby Dream", 
      record_label: "Matador Records")
     assert(m.valid?, "should be valid with a date and a description")

     m.rescord_label = nil
     refute(m.valid?, "should be invalid without a record label")
   end
 end