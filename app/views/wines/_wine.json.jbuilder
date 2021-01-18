json.extract! wine, :id, :sku, :supplier, :producer, :cuvee, :grape_variety, :style, :vintage, :btl_size, :btls_case, :cost_case, :appellation, :app_ii, :region, :country, :classification, :abv, :other, :blend, :blend_grapes, :created_at, :updated_at
json.url wine_url(wine, format: :json)
