class AddToBags < ActiveRecord::Migration
  def self.up
	  add_column :bags, :image_url, :string
  end

  def self.down
  end
end
