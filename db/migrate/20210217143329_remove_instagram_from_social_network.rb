class RemoveInstagramFromSocialNetwork < ActiveRecord::Migration[6.1]
  def change
    remove_column :social_networks, :instagram, :string
  end
end
