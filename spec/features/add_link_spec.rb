require "rails_helper"

describe "the add a link process" do
  it "adds a new link" do
    visit links_path
    click_link "Add New Link"
    fill_in "Title", :with => "The Sky is Falling"
    fill_in "Url", :with => "www.hackernews.com"
    click_on "Create Link"
    expect(page).to have_content 'The Sky is Falling'
  end
end
