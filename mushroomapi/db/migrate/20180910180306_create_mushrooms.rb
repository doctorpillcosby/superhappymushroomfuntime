class CreateMushrooms < ActiveRecord::Migration[5.2]
  def change
    create_table :mushrooms do |t|
      t.string :latin_name
      t.string :string

      t.timestamps
    end
  end
end
