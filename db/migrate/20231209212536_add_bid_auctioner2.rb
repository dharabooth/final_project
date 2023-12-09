class AddBidAuctioner2 < ActiveRecord::Migration[7.0]
  def change

      add_column :bids, :auctioner_id, :integer
  end
end
