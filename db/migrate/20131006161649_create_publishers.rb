# frozen_string_literal: true

class CreatePublishers < ActiveRecord::Migration[4.2]
  def change
    create_table :publishers do |t|
      t.string :name
      t.string :place

      t.timestamps
    end
  end
end
