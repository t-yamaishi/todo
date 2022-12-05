class AddColumnPostsStatus < ActiveRecord::Migration[6.1]
  def up
    add_column :posts, :status, :integer, default: 0
  end
  def down
  end
end
