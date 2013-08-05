class Feature < ActiveRecord::Base
  attr_accessible :description, :title, :technologies_to_add, :technology_ids, :user_project_id

  belongs_to :user_project

  has_many :snippets

  has_many :feature_technologies, :dependent => :destroy
  has_many :technologies, :through => :feature_technologies

  has_many :uploads, as: :uploadable, :dependent => :destroy

  def technologies_to_add=(technologies)
    technologies.collect(&:downcase).collect(&:strip).uniq.reject(&:blank?).each do |technology|
      # if Technology.where()
    self.technologies.build(:name => technology)
    end
  end

  def project
    self.user_project.project
  end

  def user
    self.user_project.user
  end

  def slides_in_order
      slides = []
      self.add_snippets(slides)
      self.add_uploads(slides)
      slides
  end

  def add_snippets(slides)
    self.snippets.each do |snippet|
        slides[snippet.position] = snippet
    end
    slides
  end

  def add_uploads(slides)
    self.uploads.each do |upload|
        slides[upload.position] = upload
    end
    slides
  end

  def editable_by?(user)
    self.user == user
  end

  def destroyable_by?(user)
    self.user == user
  end

  def createable_by?(user)
    self.project.users.include?(user)
  end
end
