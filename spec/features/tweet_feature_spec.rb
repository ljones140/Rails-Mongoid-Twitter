require 'rails_helper'

feature 'creating tweets' do

  scenario 'Tweet can be created' do
    visit tweets_path
    fill_in "Body", with: "test tweet"
    click_button "post tweet"
    expect(page).to have_content "test tweet"
  end

end
