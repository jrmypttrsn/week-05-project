################################## EPISODES CONTROLLER ##################################
 
 # new
 get "/episodes/new/?" do
   @episode = Episode.new
   erb :"episodes/new"
 end
 
 # create
 post "/episodes/?" do
   @episode = Episodes.new(params)
 
   if Episode.save
     redirect to("/episodes")
   else
     erb :"episodes/new"
   end
 end
 
 # index
 get "/episodes/?" do
   @episodes = Episode.all
   erb :"episodes/index"
 end
 
 # show
 get "/episodes/:id/?" do
   @episode = Episode.find_by_id(params['id'])
   erb :"episodes/show"
 end
 
 # answer
 get "/episodes/:id/answer/?" do
   @episode = Episode.find_by_id(params['id'])
   erb :"episodes/answer"
 end
 
 # edit
 get "/episodes/:id/edit/?" do
   @episode = Episode.find_by_id(params['id'])
   erb :"episodes/edit"
 end
 
 # update
 patch "/episodes/:id/?" do
   @episode = Episode.find_by_id(params['id'])
   
   if @episode.update_attributes(date: params['date'],
                                    description: params['description'])
     redirect to("/episodes/#{@episode.id}")
   else
     erb :"episodes/edit"
   end
 end
 
 # delete
 delete "/episodes/:id/?" do
   @episode = Episode.find_by_id(params['id'])
   @episode.destroy
   redirect to("/episodes")
 end