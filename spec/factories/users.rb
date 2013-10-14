# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
      provider "github"
      github_id "1010670"
      name "micahcorn"
      email "micah_corn@yahoo.com"
      avatar_url "https://1.gravatar.com/avatar/6bccec1823ea9a60593077e537b1e790?d=https%3A%2F%2Fidenticons.github.com%2F8ba70e8e739e7526f26c4a665108edf4.png"
      token "a29f853f801a64c464577bd078a8b714b4ef9791"
      registered true
  end
end