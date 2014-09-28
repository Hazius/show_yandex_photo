class WelcomeController < ApplicationController

  def index
    @photos = take_photes(5)
    respond_to do |format|
      format.html
      format.js
    end
  end

    private

      def take_photes(p_quantity)
        photos_all = Feedjira::Feed.fetch_and_parse('http://api-fotki.yandex.ru/api/users/Ankorstil/photos/published/').entries
        photos_result = Array.new
        p_quantity.times do
          photo = photos_all[Random.rand(1..100)]
          photos_result.push(photo)
          HistoryOfPhoto.save_in_history(photo)
        end
        return photos_result
      end

end
