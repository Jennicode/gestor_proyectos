class CreateProjectmodels < ActiveRecord::Migration[5.2]
  def change
    create_table :projectmodels do |t|
      t.string :nombre
      t.string :descripcion
      t.date :fecha_inicial
      t.date :fecha_final
      t.string :estado, default: "propuesta"

      t.timestamps
    end
  end
end
