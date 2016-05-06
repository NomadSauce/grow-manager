json.array!(@plantdats) do |plantdat|
  json.extract! plantdat, :id, :ambtemp, :foltempcur, :foltempmin, :foltempmax, :ph, :heatmat, :tds, :h202, :plant_id
  json.url plantdat_url(plantdat, format: :json)
end
