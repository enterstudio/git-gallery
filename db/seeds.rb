# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

#To customize this seed file:
#1. put a fake email in your user.create spot
#2. make your UserProject in the top four blank and fill in whoever's was blank before with their id 1-4

###################
# CREATE PROJECTS #
###################
sample_description = "Description of Project ... Words to fill up more space  Words to fill up more space  Words to fill up more space  Words to fill up more space  Words to fill up more space  Words to fill up more space  Words to fill up more space  Words to fill up more space  Words to fill up more space  Words to fill up more space Words to fill up more space Words to fill up more space Words to fill up more space Words to fill up more space"
Project.create(:name => "Git Gallery",        :description => "Get ready for GitHub's replacement. Git Gallery is a layer of storytelling on top of Github. You can create slideshows about how you built particular features in your repository. We chose slideshows because they demand more storytelling to go with the code. These slideshows are an alternative to technical blogging with the added benefit of keeping everything in the context of your repository and your team. Teams can work together. Each team member should create the slideshows that explain the features they understand best. This is an ideal portfolio to show prospective employers. You're a developer. You know what you did and why you did it. Show off.", :source => "https://github.com/flatiron-school/git-gallery")        # 1
Project.create(:name => "Syllaboss",          :description => "It's like homework on the internet and stuff. You can see what you have to do and how long you can procrastinate. We used bootstrap cause it's easy.", :source => "https://github.com/flatiron-school/recipes-sample-app") # 2
Project.create(:name => "Hire-redux",         :description => "Everybody loves gauges. Boats have gauges, motorcycles have gauges, jets have gauges, why shouldn't Rebecca's hiring process have gauges? We used bootstrap cause it's easy", :source => "https://github.com/micahrcorn/playlister-r")            # 3
Project.create(:name => "AppApp",      		  :description => "You don't have to be anxious about your application anymore. We help Adam reject applicants more efficiently. Our algorithm automates the flatiron formula: 1 professional athlete, 1 poker player, 1 sky-diver, 1 special forces soldier, 5 investment bankers, 10 Ivy-leaguers, and 20 art majors. We used bootstrap cause its easy.", :source => "https://github.com/flatiron-school/library-redux")      # 4
Project.create(:name => "Assignmentio-Redux", :description => "Now you have to do the homework. We used bootstrap cause it's easy.", :source => "https://github.com/flatiron-school/appapp")             # 5
Project.create(:name => "Library-Redux", 	  :description => "Please list links for working with github's api. They're impossible to find.", :source => "https://github.com/flatiron-school/assignmentio-redux") # 6
Project.create(:name => "OpenExam2",          :description => "What color shoelaces was Matz wearing the first time he thought about duck typing??", :source => "https://github.com/flatiron-school/openexam2")          # 7
Project.create(:name => "Teamline-Redux",     :description => "The Flatiron NSA", :source => "https://github.com/flatiron-school/hire-redux")         # 8
Project.create(:name => "Pizza",              :description => "Hawaiian pizza is my favorite. What's yours?", :source => "https://github.com/flatiron-school/teamline-redux")     # 9
Project.create(:name => "KegKong",            :description => "The first step in Kegerator AI. @thekellyallen: ORDER MORE BEER!", :source => "https://github.com/flatiron-school/pizza")              # 10

#######################
# Add Project Uploads #
#######################
gitgallery = Project.all.first
gitgallery.uploads.build(:name => "landing page gg")
gitgallery.uploads.first.remote_image_url = "http://25.media.tumblr.com/725f1dc52c3cdfd8c307e17b6c8c4766/tumblr_mqimmjKiEh1sat8iwo1_r1_1280.jpg"
gitgallery.uploads.first.position = 1
gitgallery.uploads.first.save

syllaboss = Project.find(2)
syllaboss.uploads.build(:name => "landing page sb")
syllaboss.uploads.first.remote_image_url = "http://25.media.tumblr.com/71309855e732bbf68922f3ee347e49ae/tumblr_mqicwxGxxE1sat8iwo1_1280.jpg" 
syllaboss.uploads.first.position = 1
syllaboss.uploads.first.save

hireredux = Project.find(3)
hireredux.uploads.build(:name => "landing page hr")
hireredux.uploads.first.remote_image_url = "http://24.media.tumblr.com/5df852a1c08b9b69dbf7330a955160d8/tumblr_mqiddtCNuN1sat8iwo1_1280.jpg" 
hireredux.uploads.first.position = 1
hireredux.uploads.first.save

appapp = Project.find(4)
appapp.uploads.build(:name => "landing page aa")
appapp.uploads.first.remote_image_url = "http://24.media.tumblr.com/2bce7c7d37b602841d5c1000f10937eb/tumblr_mqieg3KgT81sat8iwo1_1280.jpg" 
appapp.uploads.first.position = 1
appapp.uploads.first.save

assignmentioredux = Project.find(5)
assignmentioredux.uploads.build(:name => "landing page ar")
assignmentioredux.uploads.first.remote_image_url = "http://25.media.tumblr.com/3b8c9146db28690df25f508b78dcc84e/tumblr_mqiexqwgm31sat8iwo1_1280.jpg" 
assignmentioredux.uploads.first.position = 1
assignmentioredux.uploads.first.save

libraryredux = Project.find(6)
libraryredux.uploads.build(:name => "landing page lr")
libraryredux.uploads.first.remote_image_url = "http://24.media.tumblr.com/2d11d481e79ca7d9fe72e65605fbe015/tumblr_mqif8q43HO1sat8iwo1_1280.jpg" 
libraryredux.uploads.first.position = 1
libraryredux.uploads.first.save

openexam = Project.find(7)
openexam.uploads.build(:name => "landing page oe")
openexam.uploads.first.remote_image_url = "http://25.media.tumblr.com/68c09941abaddc596f61dcc2765c9677/tumblr_mqifrlhXzj1sat8iwo1_1280.jpg" 
openexam.uploads.first.position = 1
openexam.uploads.first.save

teamline = Project.find(8)
teamline.uploads.build(:name => "landing page oe")
teamline.uploads.first.remote_image_url = "http://24.media.tumblr.com/692982b3659acdfcc1e2f734cb03a8bf/tumblr_mqk43zoU8w1sat8iwo1_1280.jpg" 
teamline.uploads.first.position = 1
teamline.uploads.first.save	

kegkong = Project.find(10)
kegkong.uploads.build(:name => "landing page kegkong")
kegkong.uploads.first.remote_image_url = "http://25.media.tumblr.com/210151e01686cf79ead887214e6dd6f7/tumblr_mqk1x66nEL1sat8iwo1_1280.jpg" 
kegkong.uploads.first.position = 1
kegkong.uploads.first.save

################
# CREATE USERS #
################
matt    = User.create(:name => "Matt Schmaus",       :email => "mschmaus201@gmail.com",    				      	) # 1
jen     = User.create(:name => "Jennifer Campbell",  :email => "jennifer.ml.campbell@gmail.com",  		  		) # 2
micah   = User.create(:name => "Micah Corn",         :email => "micah.corn@flatironschool.com",         	) # 3
des     = User.create(:name => "Desmond Rawls",   	 :email => "captaingrover@test.com",      			    	) # 4
thomas  = User.create(:name => "Thomas Deatherage",  :email => "thomas.deatherage@flatironschool.com",  		) # 5
mendal  = User.create(:name => "Mendel Kramer",    	 :email => "mendal.kramer@flatironschool.com",      		) # 6
david   = User.create(:name => "David Manaster",     :email => "david.manaster@flatironschool.com",     		) # 7
steven  = User.create(:name => "Steven Brooks",    	 :email => "steven.brooks@flatironschool.com",      		) # 8
jack    = User.create(:name => "Jack Altman",      	 :email => "jack.altman@flatironschool.com",        		) # 9
sagar   = User.create(:name => "Sagar Shah",     	 :email => "sagar.shah@flatironschool.com",         	) # 10
sam     = User.create(:name => "Samantha Radocchia", :email => "samantha.radocchia@flatironschool.com", 		) # 11
max     = User.create(:name => "Maxwell Jacobson",   :email => "maxwell.jacobson@flatironschool.com",   		) # 12
alisa   = User.create(:name => "Alisa Chang",      	 :email => "alisa.chang@flatironschool.com",        		) # 13
josh    = User.create(:name => "Josh Collins",       :email => "joshua.collins@flatironschool.com",     		) #14
kristen = User.create(:name => "Kristen Curtis",     :email => "Kristen.Curtis@flatironschool.com",     		) #15
sarah   = User.create(:name => "Sarah Duve",      	 :email => "Sarah.Duve@flatironschool.com",         		) #16
jen     = User.create(:name => "Jennifer Eisenberg", :email => "jennifer.eisenberg@flatironschool.com", 		) #17
dan     = User.create(:name => "Daniel Friedman",    :email => "daniel.friedman@flatironschool.com",    		) #18
joe     = User.create(:name => "Joseph Giralt",      :email => "joseph.giralt@flatironschool.com",      		) #19
chris   = User.create(:name => "Chris Gonzales",     :email => "chris.gonzales@flatironschool.com",     		) #20
katie   = User.create(:name => "Katie Ishibashi",    :email => "katie.ishibashi@flatironschool.com",    		) #21
chris   = User.create(:name => "Chris Lake",      	 :email => "chris.lake@flatironschool.com",         		) #22
carlos  = User.create(:name => "Carlos Lazo",      	 :email => "carlos.lazo@flatironschool.com",        		) #23
george  = User.create(:name => "George Lin",      	 :email => "george.lin@flatironschool.com",         		) #24
kirin   = User.create(:name => "Kirin",      		 :email => "kirin.masood@flatironschool.com",       ) #25
ruthie  = User.create(:name => "Ruthie Nachmany",    :email => "ruthie.nachmany@flatironschool.com",    		) #26
dave    = User.create(:name => "David Rodrigues",    :email => "david.rodrigues@flatironschool.com",    		) #27
jordan  = User.create(:name => "Jordan Trevino",     :email => "jordan.trevino@flatironschool.com",     		) #28
anisha  = User.create(:name => "Anisha Vasandani",   :email => "anisha.vasandani@flatironschool.com",   		) #29
adam    = User.create(:name => "Adam Waxman",      	 :email => "adam.waxman@flatironschool.com",        		) #30
ning    = User.create(:name => "Ning Yap",      	 :email => "ning.yap@flatironschool.com",           	) #31
alex    = User.create(:name => "Alex",      		 :email => "alex.au@flatironschool.com",            ) #32

#########################
# ADD FEATURES TO USERS #
#########################
scraper             = Feature.create(:title => "Scraper",                    :description => "placeholder description",  :user_project_id => 1)
check_boxes         = Feature.create(:title => "Nav Bar",                    :description => "placeholder description",  :user_project_id => 2)
toggle_bar          = Feature.create(:title => "Toggle Bar",                 :description => "placeholder description",  :user_project_id => 3)
schedulize          = Feature.create(:title => "Schedulize Method",          :description => "placeholder description",  :user_project_id => 4)
theme_swap          = Feature.create(:title => "Theme Swap",                 :description => "placeholder description",  :user_project_id => 5)
permissions         = Feature.create(:title => "User Permissions",           :description => "placeholder description",  :user_project_id => 6)
admin_dashboard     = Feature.create(:title => "Admin Dashboard",            :description => "placeholder description",  :user_project_id => 7)
chart               = Feature.create(:title => "chart",                      :description => "placeholder description",  :user_project_id => 8)
error_messages      = Feature.create(:title => "Error Messages",             :description => "placeholder description",  :user_project_id => 9)
tab_views           = Feature.create(:title => "Tab Views",                  :description => "placeholder description",  :user_project_id => 10)
new_user_login      = Feature.create(:title => "New User Login",             :description => "placeholder description",  :user_project_id => 11)
dossier             = Feature.create(:title => "Dossier Model",              :description => "placeholder description",  :user_project_id => 12)
twitter_scraper     = Feature.create(:title => "Twitter Scraper",            :description => "placeholder description",  :user_project_id => 13)
calendar            = Feature.create(:title => "Calendar",                   :description => "placeholder description",  :user_project_id => 14)
ratf_abstraction    = Feature.create(:title => "Ratf Abstraction",           :description => "placeholder description",  :user_project_id => 15)
polymorphic         = Feature.create(:title => "Polymorphism",               :description => "placeholder description",  :user_project_id => 16)
shallow_routes      = Feature.create(:title => "Shallow Routes",             :description => "placeholder description",  :user_project_id => 17)
permissions2        = Feature.create(:title => "Permissions",                :description => "placeholder description",  :user_project_id => 18)
validations	        = Feature.create(:title => "Validations",	               :description => "placeholder description",  :user_project_id => 19)
due_dates           = Feature.create(:title => "Due Dates",                  :description => "placeholder description",  :user_project_id => 20)
comments_model      = Feature.create(:title => "Comments",                   :description => "placeholder description",  :user_project_id => 21)
sessions            = Feature.create(:title => "Sessions",                   :description => "placeholder description",  :user_project_id => 22)
debugging_links     = Feature.create(:title => "Debugging Link Controller",  :description => "placeholder description",  :user_project_id => 23)
filter_functions    = Feature.create(:title => "Filter Functions",           :description => "placeholder description",  :user_project_id => 24)
dashboard_view      = Feature.create(:title => "Dashboard View",             :description => "placeholder description",  :user_project_id => 25)
syntax_highlighting = Feature.create(:title => "Syntax Highlighting",        :description => "placeholder description",  :user_project_id => 26)
add_period          = Feature.create(:title => "Add List Period",            :description => "placeholder description",  :user_project_id => 27)
quiz_status         = Feature.create(:title => "Quiz Status",                :description => "placeholder description",  :user_project_id => 28)
hashtags            = Feature.create(:title => "Hashtags",                   :description => "placeholder description",  :user_project_id => 29)
slider_js           = Feature.create(:title => "Slider js",                  :description => "placeholder description",  :user_project_id => 30)
github_scraper      = Feature.create(:title => "Github Scraper",             :description => "placeholder description",  :user_project_id => 31)
timezones           = Feature.create(:title => "Time Zones",                 :description => "placeholder description",  :user_project_id => 32)
tomato_sauce        = Feature.create(:title => "Tomato Sauce",               :description => "placeholder description",  :user_project_id => 33)
cheese              = Feature.create(:title => "Cheese",                     :description => "placeholder description",  :user_project_id => 34)
ham	                = Feature.create(:title => "Ham",	                       :description => "placeholder description",  :user_project_id => 35)
pineapple	        = Feature.create(:title => "Pineapple",	                   :description => "placeholder description",  :user_project_id => 36)
flow_meter          = Feature.create(:title => "Flow Meter",                 :description => "placeholder description",  :user_project_id => 37)
raspberry_pi        = Feature.create(:title => "Rasberry Pi",                :description => "placeholder description",  :user_project_id => 38)
chron_jobs	        = Feature.create(:title => "Chron Jobs",	               :description => "placeholder description",  :user_project_id => 39)

#######################
# Add UserProjects    #
#######################
user_project = UserProject.create(:contributor_github_id => 1010670,  :project_id => 1, :user_id => 3)
user_project = UserProject.create(:contributor_github_id => 4138752,  :project_id => 1, :user_id => 1)
user_project = UserProject.create(:contributor_github_id => 4601045,  :project_id => 1)
user_project = UserProject.create(:contributor_github_id => 774328,  :project_id => 1, :user_id => 4)
user_project = UserProject.create(:user_id => 1,  :project_id => 1)
user_project = UserProject.create(:user_id => 3,  :project_id => 1)
user_project = UserProject.create(:user_id => 17, :project_id => 2)
user_project = UserProject.create(:user_id => 20, :project_id => 2)
user_project = UserProject.create(:user_id => 24, :project_id => 2)
user_project = UserProject.create(:user_id => 21, :project_id => 2)
user_project = UserProject.create(:user_id => 22, :project_id => 3)
user_project = UserProject.create(:user_id => 7,  :project_id => 3)
user_project = UserProject.create(:user_id => 23, :project_id => 3)
user_project = UserProject.create(:user_id => 30, :project_id => 3)
user_project = UserProject.create(:user_id => 11, :project_id => 4)
user_project = UserProject.create(:user_id => 32, :project_id => 4)
user_project = UserProject.create(:user_id => 12, :project_id => 4)
user_project = UserProject.create(:user_id => 19, :project_id => 4)
user_project = UserProject.create(:user_id => 6,  :project_id => 5)
user_project = UserProject.create(:user_id => 33,  :project_id => 1)
user_project = UserProject.create(:user_id => 2,  :project_id => 1)
user_project = UserProject.create(:user_id => 10, :project_id => 5)
user_project = UserProject.create(:user_id => 18, :project_id => 5)
user_project = UserProject.create(:user_id => 31, :project_id => 5)
user_project = UserProject.create(:user_id => 8,  :project_id => 6)
user_project = UserProject.create(:user_id => 5,  :project_id => 6)
user_project = UserProject.create(:user_id => 13, :project_id => 6)
user_project = UserProject.create(:user_id => 8,  :project_id => 6)
user_project = UserProject.create(:user_id => 25, :project_id => 7)
user_project = UserProject.create(:user_id => 16, :project_id => 7)
user_project = UserProject.create(:user_id => 27, :project_id => 7)
user_project = UserProject.create(:user_id => 28, :project_id => 7)
user_project = UserProject.create(:user_id => 9,  :project_id => 8)
user_project = UserProject.create(:user_id => 15, :project_id => 8)
user_project = UserProject.create(:user_id => 26, :project_id => 8)
user_project = UserProject.create(:user_id => 14, :project_id => 8)
user_project = UserProject.create(:user_id => 2,  :project_id => 9)
user_project = UserProject.create(:user_id => 4,  :project_id => 9)
user_project = UserProject.create(:user_id => 1,  :project_id => 9)
user_project = UserProject.create(:user_id => 1,  :project_id => 10)
user_project = UserProject.create(:user_id => 19, :project_id => 10)
user_project = UserProject.create(:user_id => 20, :project_id => 10)
user_project = UserProject.create(:user_id => 28, :project_id => 10)


#######################
# Add Feature Uploads #
#######################
feature1 = gitgallery.features.last
	feature1.uploads.build(:name => "shallow_routes_feature")
	feature1.uploads.first.remote_image_url = "http://24.media.tumblr.com/cac794eea510798937bbef981bc14409/tumblr_mqibnsstiy1sat8iwo1_1280.jpg"
	feature1.uploads.first.position = 1
	feature1.uploads.first.save

	one = feature1.uploads.build(:name => "shallow_routes_rake_after")
	one.remote_image_url = "http://24.media.tumblr.com/a9be25c610b23f91167bbc9b997ea8eb/tumblr_mqibnsstiy1sat8iwo2_1280.jpg" 
	one.position = 2
	one.save

	two = feature1.uploads.build(:name => "shallow_routes_rake_before")
	two.remote_image_url = "http://25.media.tumblr.com/c08585bbe24b689d75cfc03626956a45/tumblr_mqibnsstiy1sat8iwo3_1280.jpg" 
	two.position = 3
	two.save

	three = feature1.uploads.build(:name => "shallow_routes_snippet")
	three.remote_image_url = "http://25.media.tumblr.com/1330e132c4bb3649adcf1116687fa8bb/tumblr_mqibnsstiy1sat8iwo4_1280.jpg" 
	three.position = 4
	three.save

	four = feature1.uploads.build(:name => "shallow_routes_user")
	four.remote_image_url = "http://24.media.tumblr.com/a9447d4a4db1066facd445624a824593/tumblr_mqibnsstiy1sat8iwo5_1280.jpg" 
	four.position = 5
	four.save

############################
# ADD SNIPPETS TO FEATURES #
############################
routes = Snippet.create(:name => "routes.rb",	:url => "https://github.com/flatiron-school/git-gallery/blob/master/config/routes.rb", 	:language => "ruby", 	:code => 
	  "resources :users do
	resources :features, :shallow => true do
		resources :snippets
		resources :uploads
	end
	resources :technologies, only: [:show]
end", 
	  :description => "I didn't want to have a double-nested url so I made features shallow. This one line immediately changes the routes visible in rake routes.", :feature_id => 17, :position => 6)

paths = Snippet.create(:name => "shallow paths", :url => "https://github.com/flatiron-school/git-gallery/blob/master/app/views/features/show.html.erb", :language => "ruby", :code =>
	 "#this path:
new_user_feature_snippet_path(@user, @feature)
 
#became this simpler path:
new_feature_snippet_path(@feature)",
		:description => "All feature paths previously included the user. For snippets and uploads, which belong to a feature, the user is unnecessary information. Now the paths to snippets and uploads only depend on the feature they belong to.", :feature_id => 17, :position => 7)

forms = Snippet.create(:name => "shallow forms", :url => "https://github.com/flatiron-school/git-gallery/blob/master/app/views/snippets/_form.html.erb", :language => "ruby", :code =>
	"#this form tag:
<%= form_for [@user, @feature, @snippet] do |f| %>
 
#became this simpler form tag:
<%= form_for [@feature, @snippet] do |f| %>",
		:description => "Similar to what we saw with the paths, all form tags became simpler. Form tags for resources nested under features went from relying on the user, the feature, and the current resource to relying on only the feature and the current resource (in this case snippets).", :feature_id => 17, :position => 8)

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
rails.features   << permissions
rails.features   << validations
rails.features   << sessions
rails.features   << comments_model
rails.features   << dossier
ruby.features    << filter_functions
ruby.features    << twitter_scraper
ruby.features    << add_period
ruby.features    << github_scraper
ruby.features    << chron_jobs
git.features     << ham
git.features     << pineapple
git.features     << cheese
json.features    << twitter_scraper          
jquery.features  << github_scraper      
css.features     << dashboard_view          
css.features     << theme_swap         
jquery.features  << slider_js            
jquery.features  << syntax_highlighting         
js.features      << slider_js       
js.features      << syntax_highlighting       
html.features    << chart       
sql.features     << ratf_abstraction          
sinatra.features << chron_jobs            
json.features    << github_scraper  
python.features  << tomato_sauce       
html.features    << tab_views 
sql.features     << permissions

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
