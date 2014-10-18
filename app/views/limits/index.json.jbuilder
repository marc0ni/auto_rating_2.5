json.array!(@limits) do |limit|
  json.extract! limit, :id, :bipd, :medical, :submission_id
  json.url limit_url(limit, format: :json)
end
