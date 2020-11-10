class CreatePaintings < ActiveRecord::Migration[6.0]
  def change
    create_table :paintings do |t|
      t.string :name
      t.integer :year_created
      t.string :painting_inspiration
      t.string :painting_url
      t.belongs_to :artist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
