class AddNameToSocialNetwork < ActiveRecord::Migration[6.1]
  def change
    add_column :social_networks, :name, :string
  end
end
