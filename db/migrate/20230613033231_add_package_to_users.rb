class AddPackageToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :package, :string
  end
end
