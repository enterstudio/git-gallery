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

  def get_contributors_link(url)
    repo = Nokogiri::HTML(open("https://github.com#{url}"))
    repo.search('ul.numbers-summary li:nth-of-type(4) a').each do |link|
      return link.attributes['href'].value.downcase
    end
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

  def scrape_repo_root_directory(url)
    root_files = {}

    root_directory = Nokogiri::HTML(open("https://github.com#{url}"))
    
    root_content = root_directory.search('.files .content a')
    root_icon_class = root_directory.search('.files .icon span')
    root_size = root_content.size

    for i in 0..(root_size-1)
      root_files[root_content[i].content] ||= []
      root_files[root_content[i].content] << root_content[i].attributes['href'].value.downcase
      root_files[root_content[i].content] << root_icon_class[i].attributes['class'].value.downcase
    end

    return root_files
  end
end

####################
# TESTING PURPOSES #
####################
trial = GithubParser.new
username = "mschmaus201"

repo_page = trial.get_repo_page(username)
# pp repo_page

repo_hash = trial.get_repo_list(repo_page)
# pp repo_hash

# contributors_page = trial.get_contributors_link("/flatiron-school/002.students.flatironschool.com")
# contributors = trial.get_contributors(contributors_page)
# pp contributors

# root_directory = trial.scrape_repo_root_directory("/#{username}/#{rand_repo}")
# puts "\nThis is the root directory for #{rand_repo}\n\n".upcase
# pp root_directory
