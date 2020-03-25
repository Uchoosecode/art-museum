class CreateArtworks < ActiveRecord::Migration[6.0]
  def change
    create_table :artworks do |t|

      t.string :title
      t.string :category
      t.string :medium
      t.text :image_url
      t.text :comment

      t.belongs_to :gallery, null: false, foreign_key: true

      t.timestamps
    end
  end
end
