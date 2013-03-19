class RemoveAuthorFromBooks < ActiveRecord::Migration
  def change
    #remove_column :books, :author, :string
    remove_column :books, :author
  end
end
