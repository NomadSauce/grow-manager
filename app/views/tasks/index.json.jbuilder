json.array!(@tasks) do |task|
  json.extract! task, :id, :title, :plant_id, :tray_id
  json.url task_url(task, format: :json)
end
