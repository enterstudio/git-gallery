class Feature < ActiveRecord::Base
  attr_accessible :description, :title, :user_id, :technologies_to_add, :project_id, :technology_ids

  belongs_to :user
  belongs_to :project

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

  def slides_in_order
      presentation = []
      self.add_snippets(presentation)
      self.add_uploads(presentation)
      presentation
  end

  def add_snippets(presentation)
    self.snippets.each do |snippet|
        presentation[snippet.position - 1] = snippet
    end
    presentation
  end

  def add_uploads(presentation)
    self.uploads.each do |upload|
        presentation[upload.position - 1] = upload
    end
    presentation
  end

  def editable_by?(user)
    self.user == user
  end

  def destroyable_by?(user)
    self.user == user
  end

  # def createable_by?(user)
  #   self.user == user
  # end

  def createable_by?(user)
    self.project.users.include?(user)
  end
end
