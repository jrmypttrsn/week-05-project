#################################### SOULS CONTROLLER ####################################

# Index
get '/souls/?' do 
  @souls = Soul.all
  erb :"souls/index"
end

# New
get '/souls/new/?' do 
  @soul = Soul.new
  @divisions = Division.all 
  erb :"souls/new"
end

# Create
post '/souls/?' do
  @soul = Soul.new(params)

  if @soul.save
    redirect to('/souls')
  else
    erb :"souls/new"
  end
end

# Show
get '/souls/:id/?' do
  @soul = Soul.find_by_id(params['id'])
  erb :"souls/show"
end


# Edit
 
 get '/souls/:id/edit/?' do
   @soul = Soul.find_by_id(params['id'])
   @divisions = Division.all
   erb :"souls/edit"
 end
 
 patch '/souls/:id/?' do
   @soul = Soul.find_by_id(params['id'])
   @division = Division.find_by_id(params['division_id'])
   @soul.anger_level = @soul.anger_level + 1
   if @soul.update_attributes(name: params['name'], 
                                occupation: params['occupation'],
                                division: @division)
     redirect to("/souls/#{@soul.id}")
   else
     erb :"souls/edit"
   end
 	end 

  # Delete
  delete "/souls/:id/?" do
   @soul = Soul.find_by_id(params['id'])
   @soul.destroy
 
   redirect to('/souls')
  end

get '/souls/:id/demons/?' do
   @soul = Soul.find_by_id(params['id'])
   @demons = Demon.all
  erb :"souls/demons"
end
 
 # Assigning a demon
 post '/souls/:id/demons/assign/?' do
   @soul = Soul.find_by_id(params['id'])
   @demon = Demon.find_by_id(params['demon_id'])
 
  @soul.demons << @demon
   redirect to("/souls/#{@soul.id}/demons")
 end
 
 # Removing a demon
 post '/souls/:id/demons/remove/?' do
   @soul = Soul.find_by_id(params['id'])
   @demon = Demon.find_by_id(params['demon_id'])
 
   @soul.demons.delete(@demon)
   redirect to("/souls/#{@soul.id}/demons")
 end