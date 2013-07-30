class User < ActiveRecord::Base
  attr_accessible :email, :name, :technologies, :features, :password

  has_many :repos
  has_many :features, :dependent => :destroy
  has_many :technologies, :through => :features
  has_many :projects, :through => :features

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

  def self.search(query)
    where("name like ?", "%#{query}%") 
  end

  def self.from_omniauth(auth)
    where(auth.slice("provider", "uid")).first || create_from_omniauth(auth)
  end

  def self.create_from_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["nickname"]
      user.email = auth["info"]["email"]
      user.token = auth["credentials"]["token"]
  end
end

end

