class RemoveTwitterFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :twitter, :string
  end
end
