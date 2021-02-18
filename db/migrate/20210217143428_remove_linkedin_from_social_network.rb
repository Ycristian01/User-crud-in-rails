class RemoveLinkedinFromSocialNetwork < ActiveRecord::Migration[6.1]
  def change
    remove_column :social_networks, :linkedin, :string
  end
end
