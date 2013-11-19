json.array!(@analysis) do |analysis|
  json.extract! analysis, :title
  json.url analysis_url(analysis, format: :json)
end
