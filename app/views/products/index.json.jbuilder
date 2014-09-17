json.array!(@products) do |product|
  json.extract! product, :id, :name, :company_id, :quality_rating, :item_type_id
  json.url product_url(product, format: :json)
end
