class CreateMedia < ActiveRecord::Migration[6.0]
  def change
    create_table :media do |t|
      t.string :name
      
      t.belongs_to :gallery, null: false, foreign_key: true
      t.belongs_to :artwork, null: false, foreign_key: true
      
      t.timestamps
    end
  end
end
