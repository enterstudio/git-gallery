module Findable
  def find_or_create_by(hash)
    self.where(hash).first || self.create(hash)
  end 
end