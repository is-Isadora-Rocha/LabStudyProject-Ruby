json.extract! comida, :id, :nome, :tipo, :descricao, :preco, :created_at, :updated_at
json.url comida_url(comida, format: :json)
