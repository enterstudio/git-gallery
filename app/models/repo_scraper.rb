require 'json'
require 'open-uri'

class Repo_scraper

  def initialize(user)
    @user = user
    scrape_repos
  end

  def scrape_repos
    repos = JSON.parse(open("https://api.github.com/users/#{@user.name}/repos").read)

    repos.each do |repo|
      
      if Repo.where(:github_id => repo["id"]).empty?
        new_repo = Repo.new
        new_repo.github_id = repo["id"]
        new_repo.name = repo["name"]
        new_repo.published_at = repo["published_at"]
        new_repo.url = repo["url"]
        new_repo.html_url = repo["html_url"]
        new_repo.owner_id = @user.id

        puts "saved successfully" if new_repo.save
      end
    end     
  end
end

