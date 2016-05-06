json.array!(@trays) do |tray|
  json.extract! tray, :id, :title, :notes, :category_id
  json.url tray_url(tray, format: :json)
end
