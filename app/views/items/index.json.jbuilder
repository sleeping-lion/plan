json.array!(@items) do |item|
  json.extract! item, :title
  json.url item_url(item, format: :json)
end
