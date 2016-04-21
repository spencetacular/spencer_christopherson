json.array!(@tag_names) do |tag_name|
  json.extract! tag_name, :id, :name
  json.url tag_name_url(tag_name, format: :json)
end
