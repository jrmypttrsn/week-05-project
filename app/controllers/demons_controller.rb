#################################### DEMONS CONTROLLER ####################################

# Index
get '/demons/?' do 
  @demons = Demon.all
  erb :"demons/index"
end

# New
get '/demons/new/?' do 
  @demon = Demon.new
  @divisions = Division.all 
  erb :"demons/new"
end

# Create
post '/demons/?' do
  @demon = Demon.new(params)

  if @demon.save
    redirect to('/demons')
  else
    erb :"demons/new"
  end
end

# Show
get '/demons/:id/?' do
  @demon = Demon.find_by_id(params['id']) 
  erb :"demons/show"
end


# Edit
 
 get '/demons/:id/edit/?' do
   @demon = Demon.find_by_id(params['id'])
   @divisions = Division.all
   erb :"demons/edit"
 end
 
 patch '/demons/:id/?' do
   @demon = Demon.find_by_id(params['id'])
   @division = Division.find_by_id(params['division_id'])
   if @demon.update_attributes(name: params['name'], 
                                age: params['age'],
                                division: @division)
     redirect to("/demons/#{@demon.id}")
   else
     erb :"demons/edit"
   end
 	end 

  # Delete
  delete "/demons/:id/?" do
   @demon = Demon.find_by_id(params['id'])
   @demon.destroy
 
   redirect to('/demons')
  end