class Link < ActiveRecord::Base

  has_many :comments

  validates :title, :url, :score, :presence => true

  after_initialize :init

  def init
    self.score ||= 0.0
  end

  def age
    self.score -= 1
  end

  def add_one
    self.score += 1
  end
end
