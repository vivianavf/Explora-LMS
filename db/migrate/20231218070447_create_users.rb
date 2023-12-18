class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :user_id
      t.string :nombre
      t.string :apellido
      t.string :apodo
      t.string :correo
      t.string :zona_horaria
      t.string :descripcion

      t.timestamps
    end
  end
end
