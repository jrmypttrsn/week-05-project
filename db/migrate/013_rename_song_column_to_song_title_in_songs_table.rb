class RenameSongColumnToSongTitleInSongsTable < ActiveRecord::Migration
  def change
    rename_column :songs, :song, :song_title
  end
end