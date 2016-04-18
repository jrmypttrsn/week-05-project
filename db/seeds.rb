# Put your seed data in here. This should be a series of .create! statements for
# each of your relevant models.
#
# You'll run it with rake db:seed


Demon.create!(name: "Benji", title: "Soul Recruiter")

Demon.create!(name: "Rick", title: "Demon Trainer")

Demon.create!(name: "Randy", title: "Executive Assistant to the Vice Demon Manager")

Demon.create!(name: "Steve", title: "Janitorial Artist")

Division.create!(name: "Demon Impersonation", circle_level: "Fraud")

Division.create!(name: "Teeth Gnashing", circle_level: "Violence")

Division.create!(name: "Lingering Glances Area", circle_level: "Lust")

Division.create!(name: "Valentino's Buffet", circle_level: "Gluttony")

Division.create!(name: "Symbols and Sigils", circle_level: "Heresy")

Soul.create!(name: "Sandra", occupation: "Meat Grinder")

Soul.create!(name: "Ted", occupation: "Firestarter")

Soul.create!(name: "Jerry", occupation: "Brimstone Harvester")