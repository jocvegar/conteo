class AddSlugToVotingCenters < ActiveRecord::Migration[6.0]
  def change
    add_column :voting_centers, :slug, :string
    add_index :voting_centers, :slug, unique: true
  end
end
