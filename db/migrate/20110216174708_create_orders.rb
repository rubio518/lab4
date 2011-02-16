class CreateOrders < ActiveRecord::Migration
  def self.up
    create_table :orders do |t|
      t.integer :id
      t.string :code
      t.integer :client_id
      t.date :date
      t.integer :amount

      t.timestamps
    end
  end

  def self.down
    drop_table :orders
  end
end
