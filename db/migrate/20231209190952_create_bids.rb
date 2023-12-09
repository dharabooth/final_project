class CreateBids < ActiveRecord::Migration[7.0]
  def change
    create_table :bids do |t|
      t.integer :bid_amount
      t.integer :auctioner_id
      t.integer :buyer_id
      t.integer :department_id
      t.string :title
      t.integer :price
      t.string :description
      t.date :deadline

      t.timestamps
    end
  end
end
