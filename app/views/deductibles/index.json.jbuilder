json.array!(@deductibles) do |deductible|
  json.extract! deductible, :id, :spec_causes, :comp, :coll, :submission_id
  json.url deductible_url(deductible, format: :json)
end
