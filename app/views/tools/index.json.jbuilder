json.array!(@tools) do |tool|
  json.extract! tool, :id, :tool_barcode, :description, :quantity
  json.url tool_url(tool, format: :json)
end
