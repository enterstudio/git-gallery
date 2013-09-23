FactoryGirl.define do
  factory :repo do
    github_id 8673687
    name "Confidence Survey"
    url "https://api.github.com/repos/desmondrawls/Confidence_survey"
    html_url "https://github.com/desmondrawls/Confidence_survey"

    association :user
    association :project

  end

end