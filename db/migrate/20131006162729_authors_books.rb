# frozen_string_literal: true

class AuthorsBooks < ActiveRecord::Migration[4.2]
  def change
    create_table :authors_books do |t|
      t.integer :author_id
      t.integer :book_id

      t.timestamps
    end
  end
end
