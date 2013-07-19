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

  def scrape_repo_root_directory(url)
    root_files = {}
    # {"Factor.app" => ["href", "icon span"]}

    root_directory = Nokogiri::HTML(open("https://github.com#{url}"))
    root_directory.search('.files .content a').each_with_index do |row, i1|
      root_files[row.content] ||= []
      root_files[row.content] << row.attributes['href'].value.downcase

      root_directory.search('.files .icon span').each_with_index do |not_row, i2|
        root_files[row.content] ||= []
        root_files[row.content] << not_row.attributes['class'].value.downcase if i1 == i2
      end
    end

    # root_directory.search('.files .icon span').each_with_index do |row, i2|

    #   # pp row.attributes['class'].value.downcase
      # root_files[row.content] ||= []
    #   root_files[row.content] << row.attributes['class'].value.downcase
    # end

    return root_files
  end
end

trial = GithubParser.new
username = "mschmaus201"
# puts 
repo_page = trial.get_repo_page(username)
# pp repo_page

repo_hash = trial.get_repo_list(repo_page)
# pp repo_hash

root_directory = trial.scrape_repo_root_directory("/#{username}/recipes-sample-app")
pp root_directory

