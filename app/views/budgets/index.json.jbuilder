json.array!(@budgets) do |budget|
  json.extract! budget, :id, :type, :place, :date, :service, :stay_contact
  json.url budget_url(budget, format: :json)
end
