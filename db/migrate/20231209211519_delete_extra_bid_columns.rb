class DeleteExtraBidColumns < ActiveRecord::Migration[7.0]
  def change
      remove_column :bids, :bid_amount, :integer
      remove_column :bids, :deadline, :date
      remove_column :bids, :description, :string
      remove_column :bids, :title, :string
      remove_column :bids, :autioner_id, :integer
      remove_column :bids, :buyer_id, :integer
      remove_column :bids, :department_id, :integer

  end
end

