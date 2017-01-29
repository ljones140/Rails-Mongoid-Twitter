require 'rails_helper'

feature 'creating tweets' do
  let(:user) { create(:user, email: "test@test.com") }

  context 'user not logged in' do
    scenario 'cannot tweet' do
      expect(page).to_not have_css('input[type="text"]')
    end
  end

  context 'user logged in' do
    scenario 'Tweet can be created' do
      sign_in_as(user)
      visit tweets_path
      fill_in "Body", with: "test tweet"
      click_button "post tweet"
      expect(page).to have_content "test tweet"
      expect(page).to have_content "author: test@test.com"
    end
  end
end
