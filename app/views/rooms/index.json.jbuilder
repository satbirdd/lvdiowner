json.array!(@rooms) do |room|
  json.extract! room, :id, :biulding_id, :floor, :title
  json.url room_url(room, format: :json)
end
