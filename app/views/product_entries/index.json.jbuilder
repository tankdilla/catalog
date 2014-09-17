json.array!(@product_entries) do |product_entry|
  json.extract! product_entry, :id, :product_id, :price, :source, :source_url
  json.url product_entry_url(product_entry, format: :json)
end
