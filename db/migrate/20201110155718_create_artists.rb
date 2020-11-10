class CreateArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :image_url
      t.string :life_death

      t.timestamps
    end
  end
end
