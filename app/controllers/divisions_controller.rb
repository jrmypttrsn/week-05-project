################################### DIVISIONS CONTROLLER ###################################

# Index
get '/divisions/?' do 
  @divisions = Division.all
  erb :"divisions/index"
end

# New
get '/divisions/new' do 
  @division = Division.new
  @divisions = Division.all 
erb :"divisions/new"
end

# Create
post '/divisions/?' do
  @division = Division.new(params)

if @division.save
  redirect to('/divisions')
else
  erb :"divisions/new"
end
end

# Show
get '/divisions/:id/?' do
  @division = Division.find_by_id(params['id']) 
  erb :"divisions/show"
end


# show all souls in a division
get '/divisions/:id/souls/?' do 
  @division = Division.find_by_id(params['id']) 
  @souls = Soul.all

  erb :"divisions/show_souls"
end

# show all demons in a division
get '/divisions/:id/demons/?' do 
  @division = Division.find_by_id(params['id']) 
  @demons = Demon.all
  @souls = Soul.all 
  
  erb :"divisions/show_demons"
end


# Edit

get '/divisions/:id/edit/?' do
  @division = Division.find_by_id(params['id'])
  @divisions = Division.all
  erb :"divisions/edit"
end

patch '/divisions/:id/?' do
 @division = Division.find_by_id(params['id'])
  if @division.update_attributes(name: params['name'], 
                                circle_level: params['circle_level'])
    redirect to("/divisions/#{@division.id}")
  else
     erb :"divisions/edit"
  end
end 


# Delete
delete "/divisions/:id/?" do
  @division = Division.find_by_id(params['id'])
  @new_division = Division.find_by_id(params['new_division_id']) 
  redirect to("/divisions/#{@division.id}/edit") if @new_division.nil?

  @division.reassign_all_souls_and_demons(@new_division)
  @division.destroy

  redirect to('/divisions')
end