json.array!(@competitions) do |competition|
  json.extract! competition, :id, :name, :description, :collegename, :money
  json.url competition_url(competition, format: :json)
end
