json.array!(@powerliftings) do |powerlifting|
  json.extract! powerlifting, :id, :move, :result
  json.url powerlifting_url(powerlifting, format: :json)
end
