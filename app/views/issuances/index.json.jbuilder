json.array!(@issuances) do |issuance|
  json.extract! issuance, :id
  json.url issuance_url(issuance, format: :json)
end
