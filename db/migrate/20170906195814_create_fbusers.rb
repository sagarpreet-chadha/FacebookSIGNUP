class CreateFbusers < ActiveRecord::Migration
  def change
    create_table :fbusers do |t|

    	t.string :firstname 
    	t.string :lastname
    	t.string :email
    	t.string :password 
    	t.string :gender 

      t.timestamps null: false
    end
  end
end
