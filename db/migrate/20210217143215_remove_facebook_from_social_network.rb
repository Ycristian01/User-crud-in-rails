class RemoveFacebookFromSocialNetwork < ActiveRecord::Migration[6.1]
  def change
    remove_column :social_networks, :facebook, :string
  end
end
