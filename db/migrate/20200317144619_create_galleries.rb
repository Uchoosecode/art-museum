class CreateGalleries < ActiveRecord::Migration[6.0]
  def change
    create_table :galleries do |t|
      t.string :title
      t.string :category
      t.string :medium
      t.text :description
      
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
