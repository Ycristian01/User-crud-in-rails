class RemoveFacebookFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :facebook, :string
  end
end
