class WelcomeController < ApplicationController
  def index
    @feed = Feedjira::Feed.fetch_and_parse('http://api-fotki.yandex.ru/api/users/nvvukr/photos/published/?limit=5')
  	save_in_history(@feed)
  end

  def show_history
  end

  	private

  		def save_in_history(p_feed)
  			@feed.entries.each do |image|
  				HistoryOfPhoto.create(title: image.title, url: image.links[3])
  			end
  		end

end
