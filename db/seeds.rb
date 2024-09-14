# frozen_string_literal: true

require "ffaker"

Ebook.destroy_all

500.times do
  Ebook.create!(
    title: FFaker::Book.title,
    author: FFaker::Book.author,
    genre: FFaker::Book.genre,
    isbn: FFaker::Book.isbn,
    description: FFaker::Lorem.paragraph,
    price: rand(99.9..999.9).round(1)
  )
end
