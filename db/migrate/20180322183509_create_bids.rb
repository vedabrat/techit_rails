class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.string :name
      t.string :fakename
      t.integer :bid_size
      t.text :description

      t.timestamps
    end
  end
end
