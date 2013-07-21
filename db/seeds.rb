# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

###################
# CREATE PROJECTS #
###################
git_gallery = Project.create(:name => "Git Gallery")
recipe_app = Project.create(:name => "Recipe App")
playlister = Project.create(:name => "Playlister")

################
# CREATE USERS #
################
matt = User.create(:name => "Matt", :email => "matthew.schmaus@flatironschool.com", :password => "password")
jen = User.create(:name => "Jen", :email => "jen@email.com", :password => "password")

#########################
# ADD FEATUERS TO USERS #
#########################
scraper = Feature.create(:title => "scraper", :user_id => 1, :project_id => 1)
matt.features.build(:title => "polymorphic associations", :project_id => 1)
matt.features.build(:title => "playlists", :project_id => 3)
matt.save

jen.features.build(:title => "git-destroy", :project_id => 1)
jen.features.build(:title => "git-destroy", :project_id => 2)
jen.save

#######################
# CREATE TECHNOLOGIES #
#######################
ror = Technology.create(:name => "Ruby on Rails")
git = Technology.create(:name => "Github")
js = Technology.create(:name => "Javascript")

#####################################
# CONNECT FEATURES AND TECHNOLOGIES #
#####################################
js.features.push(Feature.where(:title => "git-destroy").first)
js.save

ror.features.push(Feature.where(:project_id => 1).first)

gitbuilt = Feature.where(:title => "playlists").first
gitbuilt.technologies.build(:name => "Ruby on Rails")
gitbuilt.save
