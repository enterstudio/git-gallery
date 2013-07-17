class User < ActiveRecord::Base
  attr_accessible :email, :name, :technologies, :features

  has_many :features
  has_many :technologies, :through => :features
  has_many :projects, :through => :features

  after_create :send_email, :ping_api

  def send_email #see active record callbacks
  end

  def ping_api
  end

end
