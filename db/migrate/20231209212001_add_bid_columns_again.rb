class AddBidColumnsAgain < ActiveRecord::Migration[7.0]
  def change
  
      add_column :bids, :price, :integer
      add_column :bids, :deadline, :date
      add_column :bids, :description, :string
      add_column :bids, :autioner_id, :integer
      add_column :bids, :buyer_id, :integer
      add_column :bids, :department_id, :integer

  end
end
