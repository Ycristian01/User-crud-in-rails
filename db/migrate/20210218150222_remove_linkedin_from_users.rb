class RemoveLinkedinFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :linkedin, :string
  end
end
