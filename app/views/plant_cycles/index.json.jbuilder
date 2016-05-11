json.array!(@plant_cycles) do |plant_cycle|
  json.extract! plant_cycle, :id, :title, :interval, :frequency, :plant_id
  json.url plant_cycle_url(plant_cycle, format: :json)
end
