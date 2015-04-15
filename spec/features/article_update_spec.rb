require 'rails_helper'

RSpec.describe "User can update an article" do
  context "with valid attributes" do
    it "saves and displays updated article" do
      article = Article.create(title: "Test Title", body: "Test Body")

      visit edit_article_path(article)

      fill_in "article[title]", with: "Awesome Title"
      fill_in "article[body]", with: "101 ways to feed a fish"
      click_link_or_button "Update Article"

      expect(page).to have_content("Awesome Title")
      expect(page).to have_content("101 ways to feed a fish")
    end
  end
end