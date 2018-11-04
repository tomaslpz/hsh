class CreateResidences < ActiveRecord::Migration[5.2]
  def change
    create_table :residences do |t|
      t.string :nombre
      t.string :pais
      t.string :provincia
      t.string :partido
      t.string :ciudad
      t.string :direccion
      t.string :img_link
      t.string :desc

      t.timestamps
    end
  end
end
