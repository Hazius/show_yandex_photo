class WelcomeController < ApplicationController

  require 'yandex_photos.rb'

  def index
    @photos = YandexPhotos.new.take_random_photes(5)
    @photos.each { |photo| HistoryOfPhoto.save_in_history(photo) }

    respond_to do |format|
      format.html #обычный переход
      format.js # AJAX - отображение новых 5 фоток по нажатию кнопки
    end

  end

end
