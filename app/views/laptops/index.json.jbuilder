json.array!(@laptops) do |laptop|
  json.extract! laptop, :id, :name, :description, :price, :quantity, :ram, :cpu, :weight
  json.url laptop_url(laptop, format: :json)
end
