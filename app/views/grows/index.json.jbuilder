


json.array!(@grows) do |grow|
  json.extract! grow, :id, :title, :notes
  json.url grow_url(grow, format: :json)
end
