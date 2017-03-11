class CreateMunicipalities < ActiveRecord::Migration[5.0]
  def change
    create_table :municipalities do |t|
      t.string :name
      t.integer :official_id

      t.timestamps
    end
  end
end
