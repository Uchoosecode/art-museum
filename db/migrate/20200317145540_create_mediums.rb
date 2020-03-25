class CreateMediums < ActiveRecord::Migration[6.0]
  def change
    create_table :mediums do |t|
      t.string :name
      
      t.belongs_to :artwork, null: false, foreign_key: true

      t.timestamps
    end
  end
end
