class AddAuctionerNameDelete < ActiveRecord::Migration[7.0]
  def change
    remove_column :bids, :auctioner_name, :integer
  end
end
