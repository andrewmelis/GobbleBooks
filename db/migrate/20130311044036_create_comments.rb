class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :book_id
      t.text :body
      t.datetime :posttime

      t.timestamps
    end
  end
end
