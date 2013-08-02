class Repo < ActiveRecord::Base
  attr_accessible :github_id, :name, :published_at, :url, :html_url, :user_id, :project_id

  belongs_to :user
  belongs_to :project
  has_many :user_repos
  has_many :users, :through => :user_repos

  def parse_repo_trunk
  	JSON.parse(open("#{self.url}/contents?access_token=#{self.user.token}").read)
  end

  def get_collaborators
    collaborators_login = []

    repo_info = JSON.parse(open("https://api.github.com/repos/#{self.user.name}/#{self.name}/collaborators").read)
    repo_info.each do |collab_info|
      collaborators_login << collab_info["login"]
    end
    collaborators_login
  end
end
