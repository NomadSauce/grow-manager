json.array!(@datalogs) do |datalog|
  json.extract! datalog, :id, :ambcur, :ambmin, :ambmax, :folcur, :folmin, :folmax, :ph, :heatman, :h202, :tds
  json.url datalog_url(datalog, format: :json)
end
