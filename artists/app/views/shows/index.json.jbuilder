json.array!(@shows) do |show|
  json.extract! show, :id, :date, :city, :venue, :time
  json.url show_url(show, format: :json)
end
