# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

studio1 = Studio.new(studio_name: "Exhale", location_name: "Downtown", activity_name: "Yoga", address: "270 Biscayne Blvd Way,"/n" Miami, FL 33131", phone: "(305) 423-3900", day: "Saturday", time: "2016-07-24 09:30:00")
    create_table :studios do |t|
    	
    	t.string, :location_name
    	t.string, :activity_name
    	t.string, :address
    	t.string, :phone
    	t.datetime, :time 


      t.timestamps