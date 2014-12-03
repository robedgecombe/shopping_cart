require 'rails_helper'

RSpec.describe BooksController, :type => :controller do

  describe "#index" do

    describe "response" do
      before { get :index }


      it "returns an HTTP ok status" do
        expect(response).to have_http_status(:ok)
      end

      it "lists all the books on offer" do
        Book.create(title: "Biggles", price: 12)
        get :index
        expect(assigns(:books)).to eq Book.all
      end
    end
  end

  describe "#show" do

    describe "response" do
      before do
        book = Book.create(title: "Biggles", price: 12)
        get :show, { id: book.id }
      end

      it "returns an HTTP ok status" do
        expect(response).to have_http_status(:ok)
      end
    end

  end
end
