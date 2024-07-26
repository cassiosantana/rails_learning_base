# frozen_string_literal: true

require "rails_helper"

RSpec.describe "/ebooks", type: :request do
  let(:valid_attributes) do
    {
      title: FFaker::Book.title,
      author: FFaker::Book.author,
      genre: FFaker::Book.genre,
      isbn: FFaker::Book.isbn,
      description: FFaker::Lorem.paragraph,
      price: rand(99.9..999.9).round(1)
    }
  end

  let(:new_attributes) do
    {
      title: FFaker::Book.title,
      author: FFaker::Book.author,
      genre: FFaker::Book.genre,
      isbn: FFaker::Book.isbn,
      description: FFaker::Lorem.paragraph,
      price: rand(99.9..999.9).round(1)
    }
  end

  let(:ebook) { Ebook.create!(valid_attributes) }

  describe "GET /index" do
    it "renders a successful response" do
      get ebooks_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      get ebook_url(ebook)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_ebook_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      get edit_ebook_url(ebook)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    it "creates a new Ebook" do
      expect do
        post ebooks_url, params: { ebook: valid_attributes }
      end.to change(Ebook, :count).by(1)
    end

    it "redirects to the created ebook" do
      post ebooks_url, params: { ebook: valid_attributes }
      expect(response).to redirect_to(ebook_url(Ebook.last))
    end
  end

  describe "PATCH /update" do
    it "updates the requested ebook" do
      patch ebook_url(ebook), params: { ebook: new_attributes }
      ebook.reload
      expect(ebook.title).to eq(new_attributes[:title])
      expect(ebook.author).to eq(new_attributes[:author])
      expect(ebook.genre).to eq(new_attributes[:genre])
      expect(ebook.isbn).to eq(new_attributes[:isbn])
      expect(ebook.description).to eq(new_attributes[:description])
      expect(ebook.price).to eq(new_attributes[:price])
    end

    it "redirects to the ebook" do
      patch ebook_url(ebook), params: { ebook: new_attributes }
      ebook.reload
      expect(response).to redirect_to(ebook_url(ebook))
    end
  end

  describe "DELETE /destroy" do
    let!(:ebook) { Ebook.create!(valid_attributes) }

    it "destroys the requested ebook" do
      expect do
        delete ebook_url(ebook)
      end.to change(Ebook, :count).by(-1)
    end

    it "redirects to the ebooks list" do
      delete ebook_url(ebook)
      expect(response).to redirect_to(ebooks_url)
    end
  end
end
