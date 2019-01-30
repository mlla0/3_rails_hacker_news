class AddIndexToComment2 < ActiveRecord::Migration[5.2]
  def change
  	add_reference :comment2s, :comment1, foreign_key: true
  end
end
