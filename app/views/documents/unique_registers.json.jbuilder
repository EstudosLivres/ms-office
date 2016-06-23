json.array!(@registers) do |register|
  json.extract! register, :id, :value
  json.url document_url(document, format: :json)
end