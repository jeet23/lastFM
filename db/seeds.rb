# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


songs_list=[
	["Lean on","DJ snake","Major lazer","00:05:10"],
	["Mark my words","Justin bieber","Purpose","00:02:11"],
	["Hello","Adele","25 Studio","00:06:07"],
	["Hey angel","Pink floyd","Made in the AM","00:03:28"],
	["Love story","Taylor Swift","Love","00:04:14"],
	["Sanam re","arijit singh","Sanam","00:03:56"],
	["Gerua","Arijit singh","Dilwale","00:03:34"],
	["Deewani mastani","Shreya Ghoshal","Bajirao mastani","00:04:55"],
	["Selfie le le re","Vishal Dadlani","Bajrangi mastani","00:05:16"],
	["Tu bhoola jise","KK","Airlift","00:03:13"],
	["Janam Janam","Pritam","Dilwale","00:05:15"]
]

songs_list.each do |a,b,c,d|
	Song.create(songname: a, artist: b, album: c, duration: d)
end 

