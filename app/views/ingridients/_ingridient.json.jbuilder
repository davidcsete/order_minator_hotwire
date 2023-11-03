json.extract! ingridient, :id, :kcalorie_count, :protein_count, :carbohydrate_count, :fat_count, :weight_in_gramms, :description, :created_at, :updated_at
json.url ingridient_url(ingridient, format: :json)
