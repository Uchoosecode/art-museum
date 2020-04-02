class CreateArtworks < ActiveRecord::Migration[6.0]
  def change
    create_table :artworks do |t|

      t.string :title

      t.belongs_to :gallery, null: false, foreign_key: true
      t.belongs_to :medium, null: false, foreign_key: true
      t.belongs_to :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
