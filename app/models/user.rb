class User < ActiveRecord::Base
  attr_accessible :email, :name, :technologies, :features

  has_many :features
  has_many :technologies, :through => :features
  has_many :projects, :through => :features

  # after_create :send_email, :ping_api

  def tech_features(chosen_tech)
    Feature.joins(:technologies).where(:user_id => self.id, :technologies => {:name => chosen_tech.name})
  end

  def send_email #see active record callbacks
  end

  def ping_api
  end

end
