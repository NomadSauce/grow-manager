json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :task, :time
  json.url appointment_url(appointment, format: :json)
end
