json.array!(@quotes) do |quote|
  json.extract! quote, :id, :quote, :author, :source_id
  json.url quote_url(quote, format: :json)
end
