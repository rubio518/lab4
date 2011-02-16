class ChangeProduct < ActiveRecord::Migration
  def self.up
	add_column :products, :order_id, :integer
	add_column :products, :nit, :string, :limit =>255
  end

  def self.down
  end
end
