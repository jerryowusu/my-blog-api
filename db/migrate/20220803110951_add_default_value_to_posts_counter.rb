class AddDefaultValueToPostsCounter < ActiveRecord::Migration[7.0]
  def change
    change_column_default :users, :posts_counters, 0
  end
end
