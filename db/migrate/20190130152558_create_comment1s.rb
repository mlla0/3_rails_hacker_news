# frozen_string_literal: true

class CreateComment1s < ActiveRecord::Migration[5.2]
  def change
    create_table :comment1s do |t|
      t.belongs_to :user, index: true
      t.belongs_to :link, index: true
      t.string :content
      t.timestamps
    end
  end
end
