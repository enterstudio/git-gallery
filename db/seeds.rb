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
sample_description = " <div>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deserunt, cum, ipsam, quas dolore blanditiis incidunt delectus aperiam accusamus asperiores dolorem unde porro explicabo voluptates nesciunt officia voluptate vel culpa quos?</div><div>Dolor, cumque, doloribus, tempore quos voluptatem est vel fuga consequatur doloremque quod quidem laboriosam adipisci cum reiciendis quibusdam iure natus rerum odit dolores eveniet. Incidunt doloribus et veritatis aut voluptates.</div><div>Autem, voluptas, officia nesciunt suscipit modi libero sequi corporis facilis commodi deserunt dolor voluptatem ipsa at perspiciatis quis tempora eveniet sint. Deleniti, exercitationem, sit dolorem eius repudiandae cum dolores consequuntur!</div>"

Project.create(:name => "Git Gallery",        :description => sample_description, :source => "https://github.com/flatiron-school/git-gallery")        # 1
Project.create(:name => "Recipe App",         :description => sample_description, :source => "https://github.com/flatiron-school/recipes-sample-app") # 2
Project.create(:name => "Playlister",         :description => sample_description, :source => "https://github.com/micahrcorn/playlister-r")            # 3
Project.create(:name => "Library-Redux",      :description => sample_description, :source => "https://github.com/flatiron-school/library-redux")      # 4
Project.create(:name => "AppApp",             :description => sample_description, :source => "https://github.com/flatiron-school/appapp")             # 5
Project.create(:name => "Assignmentio-Redux", :description => sample_description, :source => "https://github.com/flatiron-school/assignmentio-redux") # 6
Project.create(:name => "OpenExam2",          :description => sample_description, :source => "https://github.com/flatiron-school/openexam2")          # 7
Project.create(:name => "Hire-Redux",         :description => sample_description, :source => "https://github.com/flatiron-school/hire-redux")         # 8
Project.create(:name => "Teamline-Redux",     :description => sample_description, :source => "https://github.com/flatiron-school/teamline-redux")     # 9
Project.create(:name => "Pizza",              :description => sample_description, :source => "https://github.com/flatiron-school/pizza")              # 10
################
# CREATE USERS #
################
matt   = User.create(:name => "Matt",      :email => "matthew.schmaus@flatironschool.com",    :password => "password") # 1
jen    = User.create(:name => "Jennifer",  :email => "jennifer.campbell@flatironschool.com",  :password => "password") # 2
micah  = User.create(:name => "Micah",     :email => "micah.corn@flatironschool.com",         :password => "password") # 3
des    = User.create(:name => "Desmond",   :email => "desmond.rawls@flatironschool.com",      :password => "password") # 4
thomas = User.create(:name => "Thomas",    :email => "thomas.deatherage@flatironschool.com",  :password => "password") # 5
mendal = User.create(:name => "Mendal",    :email => "mendal.kramer@flatironschool.com",      :password => "password") # 6
david  = User.create(:name => "David",     :email => "david.manaster@flatironschool.com",     :password => "password") # 7
steven = User.create(:name => "Steven",    :email => "steven.brooks@flatironschool.com",      :password => "password") # 8
jack   = User.create(:name => "Jack",      :email => "jack.altman@flatironschool.com",        :password => "password") # 9
sagar  = User.create(:name => "Sagar",     :email => "sagar.shah@flatironschool.com",         :password => "password") # 10
sam    = User.create(:name => "Samantha",  :email => "samantha.radocchia@flatironschool.com", :password => "password") # 11
max    = User.create(:name => "Maxwell",   :email => "maxwell.jacobson@flatironschool.com",   :password => "password") # 12
alex   = User.create(:name => "Alex",      :email => "alex.au@flatironschool.com",            :password => "password") # 13

#########################
# ADD FEATURES TO USERS #
#########################
scraper          = Feature.create(:title => "Scraper",          :user_id => 1,  :project_id => 1)
check_boxes      = Feature.create(:title => "Check Box",        :user_id => 3,  :project_id => 1)
dossier          = Feature.create(:title => "Dossier",          :user_id => 13, :project_id => 5)
tracker          = Feature.create(:title => "Tracker",          :user_id => 12, :project_id => 5)
vote             = Feature.create(:title => "Vote",             :user_id => 8,  :project_id => 4)
comments         = Feature.create(:title => "Comments",         :user_id => 5,  :project_id => 4)
categories       = Feature.create(:title => "Categories",       :user_id => 10, :project_id => 6)
objectives       = Feature.create(:title => "Objectives",       :user_id => 6,  :project_id => 6)
interview        = Feature.create(:title => "Interviews",       :user_id => 7,  :project_id => 8)
records          = Feature.create(:title => "Records",          :user_id => 7,  :project_id => 8)
jobs             = Feature.create(:title => "Jobs",             :user_id => 7,  :project_id => 8)
twitter_scraper  = Feature.create(:title => "Twitter Scraper",  :user_id => 10, :project_id => 9)
scheduler        = Feature.create(:title => "Scheduler",        :user_id => 11, :project_id => 5)
feature_sections = Feature.create(:title => "Feature Sections", :user_id => 2,  :project_id => 1)
router           = Feature.create(:title => "Router",           :user_id => 4,  :project_id => 1)


#######################
# CREATE TECHNOLOGIES #
#######################
rails   = Technology.create(:name => "Rails")
git     = Technology.create(:name => "Git")
js      = Technology.create(:name => "Javascript")
ruby    = Technology.create(:name => "Ruby")
css     = Technology.create(:name => "CSS")
html    = Technology.create(:name => "HTML5")
jquery  = Technology.create(:name => "jQuery")
php     = Technology.create(:name => "PHP")
webgl   = Technology.create(:name => "WebGL")
json    = Technology.create(:name => "JSON")
python  = Technology.create(:name => "Python")
sinatra = Technology.create(:name => "Sinatra")
java    = Technology.create(:name => "Java")
objc    = Technology.create(:name => "Objective C")
sql     = Technology.create(:name => "SQL")


#####################################
# CONNECT FEATURES AND TECHNOLOGIES #
#####################################
rails.features   << records
rails.features   << router
rails.features   << interview
rails.features   << scheduler
rails.features   << dossier
ruby.features    << records
ruby.features    << twitter_scraper
ruby.features    << check_boxes
ruby.features    << scheduler
ruby.features    << interview
git.features     << check_boxes
git.features     << scheduler
git.features     << interview
json.features    << scraper          
jquery.features  << check_boxes      
css.features     << dossier          
css.features     << tracker          
jquery.features  << vote             
jquery.features  << comments         
js.features      << categories       
js.features      << objectives       
html.features    << interview        
sql.features     << records          
sinatra.features << jobs             
json.features    << twitter_scraper  
python.features  << scheduler        
html.features    << feature_sections 
sql.features     << router

rails.save
git.save
js.save     
ruby.save
css.save
html.save 
jquery.save
php.save
webgl.save
json.save
python.save
sinatra.save
java.save
objc.save
sql.save


