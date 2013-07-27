class Repo < ActiveRecord::Base
  attr_accessible :github_id, :name, :published_at, :url, :owner_id

  has_many :user_repos
  has_many :users, :through => :user_repos
end
