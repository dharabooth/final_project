class AddBidAuctioner < ActiveRecord::Migration[7.0]
  def change
      remove_column :bids, :autioner_id, :integer
      remove_column :bids, :auctioner_id, :integer
  end

end
