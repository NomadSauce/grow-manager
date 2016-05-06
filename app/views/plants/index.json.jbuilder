json.array!(@plants) do |plant|
  json.extract! plant, :id, :title, :notes, :category_id
  json.url plant_url(plant, format: :json)
end
