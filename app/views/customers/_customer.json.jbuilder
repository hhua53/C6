json.extract! customer, :id, :name, :number, :email, :notes, :created_at, :updated_at
json.url customer_url(customer, format: :json)
