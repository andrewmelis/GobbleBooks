class AddDetailsToFavorites < ActiveRecord::Migration
  def change
    add_column :favorites, :user_id, :integer
    add_column :favorites, :book_id, :integer
    add_column :favorites, :author_id, :integer
  end
end
