class RemovePriceFromBids < ActiveRecord::Migration[7.0]
  def change
    remove_column :bids, :price, :integer
  end
end
