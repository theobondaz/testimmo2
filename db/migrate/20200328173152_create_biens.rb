class CreateBiens < ActiveRecord::Migration[5.2]
  def change
    create_table :biens do |t|
      t.string :address
      t.integer :valeur
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
