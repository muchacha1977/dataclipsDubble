json.array!(@dataclips) do |dataclip|
  json.extract! dataclip, :id, :db_connection_id, :title, :statement, :user_id
  json.url dataclip_url(dataclip, format: :json)
end
