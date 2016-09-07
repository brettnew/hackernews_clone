require 'rails_helper'

describe 'the voting for a link process' do
  it 'upvotes a link' do
    link = Link.create(:title => "Look at this study", :url => 'facebook.com')
    visit links_path
    click_on 'Upvote'
    expect(page).to have_content 'Score: 1'
  end

  it 'downvotes a link' do
    link = Link.create(:title => "Look at this study", :url => 'facebook.com')
    visit links_path
    click_on 'Downvote'
    expect(page).to have_content 'Score: -1'
  end
end
