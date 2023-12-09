class DeleteBuyer < ActiveRecord::Migration[7.0]
  def change
    remove_column :bids, :buyer_id, :integer
  end
end
