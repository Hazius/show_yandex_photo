class YandexPhotos

  def initialize
    @photos_all = Feedjira::Feed.fetch_and_parse('http://api-fotki.yandex.ru/api/users/Ankorstil/photos/published/').entries
  end

  def take_random_photes(p_quantity)
    photos_result = Array.new
    p_quantity.times do
      photo = @photos_all[Random.rand(1..100)]
      photos_result.push(photo)
    end
    photos_result
  end

end