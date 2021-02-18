class AddLinkToSocialNetwork < ActiveRecord::Migration[6.1]
  def change
    add_column :social_networks, :link, :string
  end
end
