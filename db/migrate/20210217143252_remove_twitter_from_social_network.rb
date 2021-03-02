class RemoveTwitterFromSocialNetwork < ActiveRecord::Migration[6.1]
  def change
    remove_column :social_networks, :twitter, :string
  end
end
