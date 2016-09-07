class Link < ActiveRecord::Base
  validates :title, :url, :score, :presence => true

  after_initialize :init

  def init
    self.score ||= 0.0
  end

  def add_one
    self.score += 1
  end
end
