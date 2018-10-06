# frozen_string_literal: true

class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :isbn
      t.integer :pages
      t.integer :edition
      t.decimal :price, precision: 10, scale: 2
      t.date :release_date
      t.integer :publisher_id

      t.timestamps
    end
  end
end
