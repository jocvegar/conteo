class CreateCities < ActiveRecord::Migration[6.0]
  def change
    create_table :cities do |t|
      t.string :name
      t.string :slug

      t.timestamps
    end
    add_index :cities, :slug, unique: true
  end
end
