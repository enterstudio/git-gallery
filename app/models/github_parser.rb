require "nokogiri"
require "open-uri"
require "pp"

class GithubParser

  # Get Page from Github using Nokogiri
  # This method's return should be assigned a variable to pass into other methods
  # that require a doc
  def get_repo_page(username)
    prof_page = Nokogiri::HTML(open("https://github.com/#{username}"))
    prof_page.search('.tabnav-tabs li:nth-of-type(2) a').each do |link|
      return link.attributes['href'].value.downcase
    end
  end

  def get_repo_list(url)
    repos_hash = {}
    
    repo_list_page = Nokogiri::HTML(open("https://github.com#{url}"))
    repo_list_page.search('.repolist-name a').each do |repo|
      repos_hash[repo.content] = repo.attributes['href'].value.downcase
    end
    return repos_hash
  end

  # DOESN'T WORK BECAUSE PAGE TAKES A SECOND TO LOAD DATA...THIS METHOD ONLY RETURNS DATA CRUNCHING TEXT
  def get_contributors(url)
    contributors = []
    contributors_page = Nokogiri::HTML(open("https://github.com#{url}"))
    # sleep(3)
    contributors_page.search('#contributors').each do |contributor|
      contributors << contributor.content
    end
    return contributors
  end

end
