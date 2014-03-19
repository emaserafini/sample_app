json.array!(@todos) do |todo|
  json.extract! todo, :id, :description, :finished
  json.url todo_url(todo, format: :json)
end
