# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

matt = User.create(:name => "Matt")
matt.projects.build(:title => "git-built")
matt.save

jen = User.create(:name => "Jen")
jen.projects.build(:title => "git-destroy")
jen.save

js = Technology.create(:name => "Javascript")
js.projects.build(:title => "jquery")
gd = Project.where(:title => "git-destroy").first
js.projects.push(gd)
js.save


gitbuilt = Project.where(:title => "git-built").first
gitbuilt.technologies.build(:name => "ROR")
gitbuilt.save

