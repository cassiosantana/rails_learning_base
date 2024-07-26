# frozen_string_literal: true

json.extract! ebook, :id, :title, :description, :author, :genre, :isbn, :price, :created_at, :updated_at
json.url ebook_url(ebook, format: :json)
