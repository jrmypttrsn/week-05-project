################################# SONGS CONTROLLER #################################

# new
get "/songs/new/?" do
  @song = Song.new 
  @episodes = Episode.all.order(:date)
  erb :"songs/new"
end

# create
post "/songs/?" do
  @song = Song.new(song_title: params['song_title'], 
                            artist: params['artist'], 
                            album: params['album'], 
                            record_label: params['record_label'])
  @episode = Episode.find_by_id(params['episode_id'])
  if @song.save
   redirect to("/songs")
  else
   erb :"songs/new"
  end
end

# index
get "/songs/?" do
  @songs = Song.all
  erb :"songs/index"
end

# show
get "/songs/:id/?" do
  @song = Song.find_by_id(params['id'])
  @episodes = @song.episodes.find_by_id(params['id'])
  erb :"songs/show"
end

# edit
get "/songs/:id/edit/?" do
  @song = Song.find_by_id(params['id'])
  @episodes = Episode.all
  erb :"songs/edit"
end

# update
patch "/songs/:id/?" do
  @song = Song.find_by_id(params['id'])

  if @song.update_attributes(song_title: params['song_title'], 
                            artist: params['artist'], 
                            album: params['album'], 
                            record_label: params['record_label'])
   redirect to("/songs/#{@song.id}")
  else
   erb :"songs/edit"
  end
end

# # delete
# delete "/songs/:id/?" do
#  @song = Song.find_by_id(params['id'])
#  @song.destroy
#  redirect to("/songs")
#  erb :"songs/edit"
# end