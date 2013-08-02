class User < ActiveRecord::Base
  attr_accessible :email, :name, :github_id

  has_many :repos
  
  has_many :user_projects
  has_many :projects, :through => :user_projects

  has_many :technologies, :through => :features

  after_destroy :prune_repos, :disassociate_projects

  # has_secure_password

  # after_create :send_email, :ping_api

  def tech_features(chosen_tech)
    Feature.joins(:technologies).where(:user_id => self.id, :technologies => {:name => chosen_tech.name})
  end

  # def send_email #see active record callbacks
  # end

  # def ping_api
  # end

  def editable_by?(user)
    self == user
  end

  def features
    features = []
    self.user_projects.each do |user_project|
      features << user_project.features
    end
    features.flatten
  end

  def self.search(query)
    where("name like ?", "%#{query}%")
  end

  def self.from_omniauth(auth)
    where(auth.slice("provider", "github_id")).first || create_from_omniauth(auth)
  end

  def self.create_from_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.github_id = auth["uid"]
      user.name = auth["info"]["nickname"]
      user.email = auth["info"]["email"]
      user.avatar_url = auth["info"]["image"]
      user.token = auth["credentials"]["token"]
    end
  end

  def prune_repos
    self.repos.each do |repo|
      !repo.project_id ? repo.destroy : repo.user_id = nil
    end
  end

  def disassociate_projects
    self.user_projects.each do |row|
      row.destroy
    end
  end
end
