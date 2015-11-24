class Posts < ActiveRecord::Migration
  def change
  	create_table :posts do |p|
  		p.string :img_url
  	end
  end
end
