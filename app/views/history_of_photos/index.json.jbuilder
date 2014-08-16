json.array!(@history_of_photos) do |history_of_photo|
  json.extract! history_of_photo, :title, :url, :hits
  json.url history_of_photo_url(history_of_photo, format: :json)
end