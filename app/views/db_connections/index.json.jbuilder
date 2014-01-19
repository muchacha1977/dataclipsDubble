json.array!(@db_connections) do |db_connection|
  json.extract! db_connection, :id
  json.url db_connection_url(db_connection, format: :json)
end
