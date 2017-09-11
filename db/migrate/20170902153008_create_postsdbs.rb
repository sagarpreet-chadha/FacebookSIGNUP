class CreatePostsdbs < ActiveRecord::Migration
  def change
    create_table :postsdbs do |t|
    	t.string :title
    	t.string :content
      t.timestamps null: false
    end
  end
end
