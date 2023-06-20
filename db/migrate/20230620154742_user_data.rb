class UserData < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email, null: false
      t.string :name, null: false
      t.string :last_name, null: false
      t.string :phone, null: false
      t.string :country, default:'USA'
      t.string :package, null: false
      t.text :question
    end
  end
end
