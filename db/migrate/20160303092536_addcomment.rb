class Addcomment < ActiveRecord::Migration
  def change
  	add_column(:posts, :description, :string)
  end
end
