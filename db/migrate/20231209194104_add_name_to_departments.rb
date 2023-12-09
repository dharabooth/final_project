class AddNameToDepartments < ActiveRecord::Migration[7.0]
  def change
      add_column :departments, :name, :string
  end
end
