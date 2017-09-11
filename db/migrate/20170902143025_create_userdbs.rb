class CreateUserdbs < ActiveRecord::Migration
  def change
    create_table :userdbs do |t|
      t.string :name
      t.integer :age
      t.string :email

      t.timestamps null: false
    end
  end
end
