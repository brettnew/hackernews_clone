class Comment < ActiveRecord::Base
  belongs_to :link

  validates :content, :author, :presence => true
end
