json.extract! user, :id, :user_id, :nombre, :apellido, :apodo, :correo, :zona_horaria, :descripcion, :created_at, :updated_at
json.url user_url(user, format: :json)
