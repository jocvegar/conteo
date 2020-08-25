class CreateVotingCenters < ActiveRecord::Migration[6.0]
  def change
    create_table :voting_centers do |t|
      t.string :name
      t.references :city, null: false, foreign_key: true

      t.timestamps
    end
  end
end
