json.array!(@sources) do |source|
  json.extract! source, :id, :medium, :name, :subject
  json.url source_url(source, format: :json)
end
