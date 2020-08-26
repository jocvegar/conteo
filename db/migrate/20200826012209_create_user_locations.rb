class CreateUserLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :user_locations do |t|
      t.references :user, null: false, foreign_key: true
      t.references :voting_center, null: false, foreign_key: true

      t.timestamps
    end
  end
end
