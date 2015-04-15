require 'rails_helper'

RSpec.describe "User creates an article" do
  context "with valid attributes" do
    it "saves and displays article title" do
      visit new_article_path
      fill_in "article[title]", with: "Awesome Title"
      fill_in "article[body]", with: "101 ways to feed a fish"
      click_link_or_button "Create Article"

      expect(page).to have_content("Awesome Title")
      expect(page).to have_content("101 ways to feed a fish")
    end
  end
end