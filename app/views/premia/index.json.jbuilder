json.array!(@premia) do |premium|
  json.extract! premium, :id, :comp_base, :coll_base, :otc_base, :submission_id
  json.url premium_url(premium, format: :json)
end
