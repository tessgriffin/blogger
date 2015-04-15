require 'rails_helper'

RSpec.describe "User destroys an article" do
  it "destroys and article" do
    article = Article.create(title: "Destroy Me", body: "Yes!")

    visit article_path(article)
    expect(page).to have_content("Destroy Me")

    click_link_or_button "delete"

    expect(page).to have_content("Article deleted!")
  end
end