json.array!(@apprentices) do |apprentice|
  json.extract! apprentice, :id, :name, :email
  json.url apprentice_url(apprentice, format: :json)
end
