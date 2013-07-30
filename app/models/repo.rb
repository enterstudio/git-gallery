class Repo < ActiveRecord::Base
  attr_accessible :github_id, :name, :published_at, :url, :html_url, :user_id, :project_id

  belongs_to :user
  belongs_to :project
  has_many :user_repos
  has_many :users, :through => :user_repos

  def parse_repo_trunk
  	JSON.parse(open("#{self.url}/contents?access_token=#{self.user.token}").read)
  end
end
