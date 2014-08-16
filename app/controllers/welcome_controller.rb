class WelcomeController < ApplicationController
  def index
    @feed = Feedjira::Feed.fetch_and_parse('http://api-fotki.yandex.ru/api/users/nvvukr/photos/published/?limit=5')
  end

  def show_history
  end
end
