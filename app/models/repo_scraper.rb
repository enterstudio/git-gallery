require 'json'
require 'open-uri'

class RepoScraper

  def initialize(user)
    @user = user
    scrape_repos
  end

  def scrape_repos
    repos = JSON.parse(open("https://api.github.com/users/#{@user.name}/repos?access_token=#{@user.token}").read)

    repos.each do |repo|
      repo_check = Repo.where(:github_id => repo["id"]).first
      
      if repo_check
        repo_check.user_id = @user.id
        UserProject.create(:user_id => @user.id, :project_id => repo_check.project_id)
      else
        new_repo = Repo.new
        new_repo.github_id = repo["id"]
        new_repo.name = repo["name"]
        new_repo.published_at = repo["published_at"]
        new_repo.url = repo["url"]
        new_repo.html_url = repo["html_url"]
        new_repo.user_id = @user.id
        new_repo.github_owner_id = repo["owner"]["id"]

        puts "saved successfully" if new_repo.save
      end
    end     
  end
end
