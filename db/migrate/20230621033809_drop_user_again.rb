class DropUserAgain < ActiveRecord::Migration[7.0]
  def change
    drop_table :users, if_exist: true
  end
end
