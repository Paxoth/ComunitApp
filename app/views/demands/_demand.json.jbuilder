json.extract! demand, :id, :title, :description, :status, :demand_type, :user_id, :service_id, :created_at, :updated_at
json.url demand_url(demand, format: :json)
