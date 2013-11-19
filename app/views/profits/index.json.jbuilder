json.array!(@profit) do |profit|
  json.extract! profit, :title
  json.url profit_url(profit, format: :json)
end
