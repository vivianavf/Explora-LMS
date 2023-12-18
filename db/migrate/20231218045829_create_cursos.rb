class CreateCursos < ActiveRecord::Migration[7.1]
  def change
    create_table :cursos do |t|
      t.integer :id_curso
      t.string :uuid
      t.string :nombre
      t.string :codigo
      t.integer :nestudiantes

      t.timestamps
    end
  end
end
