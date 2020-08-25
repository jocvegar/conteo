class AddZoneToCities < ActiveRecord::Migration[6.0]
  def change
    add_reference :cities, :zone, null: false, foreign_key: true
  end
end
