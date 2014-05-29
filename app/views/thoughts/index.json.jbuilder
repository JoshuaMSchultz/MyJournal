json.array!(@thoughts) do |thought|
  json.extract! thought, :id, :title, :body, :example_id
  json.url thought_url(thought, format: :json)
end
