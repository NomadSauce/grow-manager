json.array!(@nutrients) do |nutrient|
  json.extract! nutrient, :id, :title, :manufacturer, :price, :unit
  json.url nutrient_url(nutrient, format: :json)
end
