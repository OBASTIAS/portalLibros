json.extract! sale, :id, :paymentMethod, :reservation_id, :created_at, :updated_at
json.url sale_url(sale, format: :json)
