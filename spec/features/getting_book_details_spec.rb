require 'rails_helper'

RSpec.describe "getting book details" do

  it "click on a book" do
    book = FactoryGirl.create(:book)
    visit root_path
    click_link 'Info'

    expect(page).to have_content(book.title)
  end

end
