class CreateVoters < ActiveRecord::Migration[6.0]
  def change
    create_table :voters do |t|
      t.string :name
      t.string :identity
      t.references :voting_center, null: false, foreign_key: true

      t.timestamps
    end
  end
end
