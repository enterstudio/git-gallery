class Feature < ActiveRecord::Base
  attr_accessible :description, :title, :user_id, :technologies_to_add, :project_id

  belongs_to :user
  belongs_to :project

  has_many :feature_technologies
  has_many :technologies, :through => :feature_technologies

  has_many :uploads, as: :uploadable

  def technologies_to_add=(technologies)
    self.technologies = []
    technologies.collect(&:downcase).collect(&:strip).uniq.reject(&:blank?).each do |technology|
      self.technologies.build(:name => technology)
    end
  end
end