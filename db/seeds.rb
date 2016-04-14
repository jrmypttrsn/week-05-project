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

Episode.create!(date: "02/07/2015", description: "Another fake show! Can you believe it!?")

CallerAppearance.create!(date: "01/01/2015")

CallerAppearance.create!(date: "02/02/2015")

CallerAppearance.create!(date: "03/03/2015")

CallerAppearance.create!(date: "04/04/2015")

GuestAppearance.create!)(date: "05/05/2015")

GuestAppearance.create!)(date: "06/06/2015")

GuestAppearance.create!)(date: "07/07/2015")

GuestAppearance.create!)(date: "08/08/2015")

Music.create!(song: "Fuckers", artist: "Savages", album: "Fuckers/Dream Baby Dream", 
    record_label: "Matador Records")

Music.create!(song: "Dream Baby Dream", artist: "Savages", album: "Fuckers/Dream Baby Dream", 
    record_label: "Matador Records")

Music.create!(song: "The Answer", artist: "Savages", album: "Adore Life", 
    record_label: "Matador Records")

Music.create!(song: "Evil", artist: "Savages", album: "Adore Life", 
    record_label: "Matador Records")

Music.create!(song: "Sad Person", artist: "Savages", album: "Adore Life", 
    record_label: "Matador Records")

Music.create!(song: "Adore", artist: "Savages", album: "Adore Life", 
    record_label: "Matador Records")

Person.create!(name: "Bob", person_type: "regular")

Person.create!(name: "Howard", person_type: "FP")

Person.create!(name: "Rick", person_type: "Wurster Character")

Person.create!(name: "Randy", person_type: "regular")