json.array!(@vision) do |vision|
  json.extract! vision, :title
  json.url vision_url(vision, format: :json)
end
