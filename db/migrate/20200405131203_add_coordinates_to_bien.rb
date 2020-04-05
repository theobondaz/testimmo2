class AddCoordinatesToBien < ActiveRecord::Migration[5.2]
  def change
    add_column :biens, :latitude, :float
    add_column :biens, :longitude, :float
  end
end
