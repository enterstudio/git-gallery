class Repo < ActiveRecord::Base
  attr_accessible :github_id, :name, :published_at, :url, :html_url, :owner_id, :project_id

  belongs_to :project
  has_many :user_repos
  has_many :users, :through => :user_repos

  def parse_repo_trunk
  	JSON.parse(open("#{self.url}/contents?access_token=#{self.owner.token}").read)
  end

  def owner
  	User.find(self.owner_id)
  end
end
