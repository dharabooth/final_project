class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.integer :author_id
      t.integer :bid_id
      t.string :body

      t.timestamps
    end
  end
end
