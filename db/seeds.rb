# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

matt = User.create(:name => "Matt")
matt.features.build(:title => "git-built")
matt.save

jen = User.create(:name => "Jen")
jen.features.build(:title => "git-destroy")
jen.save

js = Technology.create(:name => "Javascript")
js.features.build(:title => "jquery")
gd = Feature.where(:title => "git-destroy").first
js.features.push(gd)
js.save


gitbuilt = Feature.where(:title => "git-built").first
gitbuilt.technologies.build(:name => "ROR")
gitbuilt.save

micah    = User.create(name: "Micah",    email: "micah.corn@flatironschool.com",        password: "test")
jennifer = User.create(name: "Jennifer", email: "jennifer.campbell@flatironschool.com", password: "test")
desmond  = User.create(name: "Desmond",  email: "desmond.rawls@flatironschool.com",     password: "test")
matthew  = User.create(name: "Matthew",  email: "matthew.schmaus@flatironschool.com",   password: "test")
