# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Curso.create("id_curso":1, "uuid":"AAABS", "nombre":"Matematicas", "codigo":"MG001", "nestudiantes":"42")
Curso.create("id_curso":2, "uuid":"AAABD", "nombre":"Lenguaje", "codigo":"LG001", "nestudiantes":"41")
Curso.create("id_curso":3, "uuid":"AAABD", "nombre":"Ciencias Naturales", "codigo":"CN001", "nestudiantes":"40")

43.times do |i|
    User.create!(
      user_id: i + 1,
      nombre: Faker::Name.first_name,
      apellido: Faker::Name.last_name,
      apodo: Faker::Internet.username,
      correo: Faker::Internet.email,
      zona_horaria: Faker::Address.time_zone,
      descripcion: Faker::Lorem.sentence
    )
  end