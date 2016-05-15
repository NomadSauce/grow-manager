json.array!(@nutrient_calcs) do |nutrient_calc|
  json.extract! nutrient_calc, :id, :product, :vegtime, :flowertime, :rezsize, :rezunits, :aerstone, :outputunits, :nutrient_id
  json.url nutrient_calc_url(nutrient_calc, format: :json)
end
