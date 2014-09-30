json.array!(@authenticaions) do |authenticaion|
  json.extract! authenticaion, :id, :room_id, :qq, :desc
  json.url authenticaion_url(authenticaion, format: :json)
end
