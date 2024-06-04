class AddBreedToHorses < ActiveRecord::Migration[7.1]
  def change
    add_column :horses, :breed, :string
  end
end
