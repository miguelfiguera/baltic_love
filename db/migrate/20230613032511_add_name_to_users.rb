class AddNameToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :name, :string, null: false
    add_column :users, :last_name, :string, null: false
    add_column :users, :country, :string, null: false, default: "USA"
    add_column :users, :question, :text
  end
end
