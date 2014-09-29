json.array!(@buildings) do |building|
  json.extract! building, :id, :title
  json.url building_url(building, format: :json)
end
