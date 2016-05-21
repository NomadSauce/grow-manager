json.array!(@tray_cycles) do |tray_cycle|
  json.extract! tray_cycle, :id, :title, :tray_id
  json.url tray_cycle_url(tray_cycle, format: :json)
end
