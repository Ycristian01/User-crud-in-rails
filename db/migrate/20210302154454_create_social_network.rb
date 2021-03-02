class CreateSocialNetwork < ActiveRecord::Migration[6.1]
  def change
    create_table :social_networks do |t|

      t.timestamps
    end
  end
end
