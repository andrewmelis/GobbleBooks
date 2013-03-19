class AddAuthorIdToBooks < ActiveRecord::Migration
  def down
    remove_column :books, :author, :string
  end

  def up 
    add_column :books, :author_id, :integer
  end
end
