# frozen_string_literal: true

class CreateAuthors < ActiveRecord::Migration[4.2]
  def change
    create_table :authors do |t|
      t.string :first_name
      t.string :last_name
      t.date :birthday
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
