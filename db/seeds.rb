# Put your seed data in here. This should be a series of .create! statements for
# each of your relevant models.
#
# You'll run it with rake db:seed

Episode.create!(date: "02/04/2015", description: "This is a fake description of an 
	episode that doesn't exist")

Episode.create!(date: "02/05/2015", description: "This is also a fake description of an 
	episode that doesn't exist")

Episode.create!(date: "02/06/2015", description: "This is another fake description of an 
	episode that doesn't exist because shows are on Tuesdays")