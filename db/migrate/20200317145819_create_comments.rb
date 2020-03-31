class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :content
      
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :artwork, null: false, foreign_key: true

      t.timestamps
    end
  end
end
