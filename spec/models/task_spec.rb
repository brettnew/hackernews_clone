require "rails_helper"

describe Comment do
  it {should validate_presence_of :content}
  it {should validate_presence_of :author}
  it {should belong_to :link}
end
