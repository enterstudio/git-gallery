class User < ActiveRecord::Base
  attr_accessible :email, :name, :technologies, :features

  has_many :features
  has_many :technologies, :through => :features
  has_many :projects, :through => :features


  def tech_features(chosen_tech)
    Feature.joins(:technologies).where(:user_id => self.id, :technologies => {:name => chosen_tech.name})
  end

end
