class UserProject < ActiveRecord::Base
  attr_accessible :project_id, :user_id

  belongs_to :user
  belongs_to :project

  has_many :features

  def self.create_with_project(project, current_user)
    self.create(:project_id => project.id, :user_id => current_user.id)
  end
end
