json.extract! client, :id, :rfc, :nombre_cliente, :created_at, :updated_at
json.url client_url(client, format: :json)
