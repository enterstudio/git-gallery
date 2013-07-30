class Project < ActiveRecord::Base
  attr_accessible :name, :source, :description, :features

  has_one :repo
  has_many :features
  has_many :users, :through => :features

  has_many :uploads, :as => :uploadable, :dependent => :destroy

  def this_user_features(chosen_user)
    Feature.joins(:project).where(:project_id => self.id, :user_id => chosen_user.id)
  end

  def self.technologies(tech_name)
    # select p.name from projects p
    # join features f on
    # f.project_id = p.id
    self.joins("JOIN features ON features.project_id = projects.id").
    # join feature_technologies ft
    # on ft.feature_id = f.id
    joins("JOIN feature_technologies ON feature_technologies.feature_id = features.id").
    # join technologies t on
    # t.id = ft.technology_id
    joins("JOIN technologies ON technologies.id = feature_technologies.technology_id").
    # where t.name = "Rails"
    where('technologies.name' => tech_name)
  end

  def new_from_repo(id)
    project = Project.new
    repo = Repo.find(id)
    project.source = repo.url
  end

end
