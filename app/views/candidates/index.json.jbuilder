json.array!(@candidates) do |candidate|
  json.extract! candidate, :id, :name, :phone, :email, :register, :resume, :history
  json.url candidate_url(candidate, format: :json)
end
