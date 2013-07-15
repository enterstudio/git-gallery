class Project < ActiveRecord::Base
  attr_accessible :description, :title, :user_id, :technologies_to_add

  belongs_to :user

  has_many :project_technologies
  has_many :technologies, :through => :project_technologies

  def technologies_to_add=(technologies)
    self.technologies = []
    technologies.collect(&:downcase).collect(&:strip).uniq.reject(&:blank?).each do |technology|
      self.technologies.build(:name => technology)
    end
  end
end
