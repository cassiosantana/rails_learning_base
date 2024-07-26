# frozen_string_literal: true

class CreateEbooks < ActiveRecord::Migration[7.1]
  def change
    create_table :ebooks do |t|
      t.string :title
      t.text :description
      t.string :author
      t.string :genre
      t.string :isbn
      t.decimal :price

      t.timestamps
    end
  end
end
