require 'rails_helper'

RSpec.describe Book, :type => :model do

  it "returns an instance of a book" do
    book = Book.new
    expect(book).to be_instance_of(Book)
  end

  it "returns a book with a title" do
    book = Book.new(title: "Wuthering Heights")
    expect(book).to be_valid
  end

  it "is not valid if the book doesn't have a title" do
    book = Book.new
    expect(book).not_to be_valid
  end

  describe '#price_range' do
    it "costs somewhere between $10 and $20" do
      book = Book.new(title: "East Of Eden", price: 15)
      expect(book.price_range).to be_truthy
    end

    it "returns false if the book is outside the stated price of $10-$20" do
      other_book = Book.new(title: "A Town Like Alice", price: 21)
      expect(other_book.price_range).to be false
    end
  end
end


