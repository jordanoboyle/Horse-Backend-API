class CreateHorses < ActiveRecord::Migration[7.1]
  def change
    create_table :horses do |t|
      t.string :build
      t.string :color
      t.string :image_url
      t.integer :price

      t.timestamps
    end
  end
end
