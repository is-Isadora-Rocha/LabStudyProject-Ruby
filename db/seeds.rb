# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

comidas.create(nome: "macarrão de abobrinha", tipo: "fácil", 
descricao: "macarrão de abobrinha com cenoura e temperos da sua escolha", preco: 25.00)
comidas.create(nome: "purê de batata", tipo: "fácil", 
descricao: "purê de batata 3 min de cozinho com manteiguinha e amassado + orégano", preco: 5.00)
comidas.create(nome: "pavê de biscoito", tipo: "médio", 
descricao: "pavê. pavê. Quem não gosta de pavê?", preco: 15.00)
