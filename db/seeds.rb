# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
description1 = "This was my team’s capstone project at DevPoint Labs.  It allows the user to create and share custom made mixtapes by communicating with a third party api that gathers streaming music from all over the internet.  The main challenge for this project was to allow the user to search for songs, create new mixtapes and browse existing ones all without any full page reloads that would interrupt the music that was currently streaming.  To accomplish this, the site was built almost entirely using ReactJS.  It utilizes Devise, Omniauth-Facebook and Omniauth-Twitter.  This allows for one click login using either Facebook or Twitter as well as the ability to easily share the mixtapes the user created. 
"

posts = Post.create([{title: 'Test 1', content:'kldjf lakdjs ald lkdf ', image_link: "http://i.imgur.com/Noe78cU.png" },
	{title: 'Test 2', content:'kldjf lakdjs ald lkdf ', image_link: "http://i.imgur.com/Noe78cU.png" }])

projects = Project.create([{title: 'T-Mix', description: description1, image_link: 'http://i.imgur.com/XBE97zS.png',
	link:'http://tmix.herokuapp.com', github_link: 'https://github.com/samhammer325/TMix'},
	{title: 'Test 2', description: description1, image_link: 'http://i.imgur.com/XBE97zS.png',
	link:'http://tmix.herokuapp.com', github_link: 'https://github.com/samhammer325/TMix'}])