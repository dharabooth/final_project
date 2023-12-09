class AddAuctionerName < ActiveRecord::Migration[7.0]
  def change
    add_column :bids, :auctioner_name, :integer
  end
end
