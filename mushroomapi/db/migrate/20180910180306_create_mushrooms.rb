class CreateMushrooms < ActiveRecord::Migration[5.2]
  def change
    create_table :mushrooms do |t|
      t.string :latin_name
      t.string :common_name
      t.string :confused_with
      t.string :habitat
      t.string :region
      t.boolean :fairy_rings
      t.string :characteristics
      t.string :img_url

      t.timestamps
    end
  end
end
