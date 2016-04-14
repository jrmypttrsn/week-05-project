################################## MUSIC CONTROLLER ##################################
 
 # new
 get "/music/new/?" do
   @music = Music.new
   erb :"music/new"
 end
 
 # create
 post "/music/?" do
   @music = Music.new(params)
 
   if @music.save
     redirect to("/music")
   else
     erb :"music/new"
   end
 end
 
 # index
 get "/music/?" do
   @music = Music.all
   erb :"music/index"
 end
 
 # show
 get "/music/:id/?" do
   @music = Music.find_by_id(params['id'])
   erb :"music/show"
 end
 
 # edit
 get "/music/:id/edit/?" do
   @music = Music.find_by_id(params['id'])
   erb :"music/edit"
 end
 
 # update
 patch "/music/:id/?" do
   @music = Music.find_by_id(params['id'])
   
   if @music.update_attributes(song: params['song'], 
   																artist: params['artist'], 
                                	album: params['album'], 
                                  record_label: params['record_label'])
     redirect to("/music/#{@music.id}")
   else
     erb :"music/edit"
   end
 end
 
 # delete
 delete "/music/:id/?" do
   @music = Music.find_by_id(params['id'])
   @music.destroy
   redirect to("/music")
   erb :"music/edit"
 end