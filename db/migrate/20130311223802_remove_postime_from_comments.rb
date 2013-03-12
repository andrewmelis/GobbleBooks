class RemovePostimeFromComments < ActiveRecord::Migration
  def up
    remove_column :comments, :posttime
  end

  def down
    add_column :comments, :posttime, :datetime
  end
end
