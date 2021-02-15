class RemoveInstagramFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :Instagram, :string
  end
end
