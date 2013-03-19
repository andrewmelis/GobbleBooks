class RemoveAuthorIdFromFavorites < ActiveRecord::Migration
  def change
    remove_column :favorites, :author_id
  end
end
