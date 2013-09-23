FactoryGirl.define do
  factory :user do
    name "desmondrawls"
    email { Faker::Internet.email }
    github_id 774328
  end
end
