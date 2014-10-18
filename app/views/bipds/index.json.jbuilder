json.array!(@bipds) do |bipd|
  json.extract! bipd, :id, :medical, :submission_id
  json.url bipd_url(bipd, format: :json)
end
