# frozen_string_literal: true

class CreateComment2s < ActiveRecord::Migration[5.2]
  def change
    create_table :comment2s do |t|
      t.belongs_to :user
      t.string :content
      t.timestamps
    end
  end
end
