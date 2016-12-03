# Generated via
#  `rails generate curation_concerns:work Image`
require 'rails_helper'
include Warden::Test::Helpers

RSpec.feature 'Create a Image' do
  context 'a logged in user' do
    let(:user) { create(:user) }

    before do
      login_as user, scope: :user
    end

    scenario do
      visit '/'
      click_link "Works"
      click_link "New Work"
      click_link "Image"
      expect(page).to have_content "Add New Image"
    end
  end
end