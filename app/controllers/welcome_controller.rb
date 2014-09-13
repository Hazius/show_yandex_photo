class WelcomeController < ApplicationController
	
  def index
    #@feed = Feedjira::Feed.fetch_and_parse('http://api-fotki.yandex.ru/api/users/nvvukr/photos/published/?limit=5')
  	l_feed = Feedjira::Feed.fetch_and_parse('http://api-fotki.yandex.ru/api/users/Ankorstil/photos/published/')
  	@feed = take_random(l_feed, 5) #оставляем 5 рандомных
  	save_in_history() #сохраняем в бд для истории
  	respond_to do |format|
  		format.html
  		format.js
  	end
  end

  	private

  		def take_random(p_feed, p_quantity)
  			l_result = Array.new
  			5.times do  				
  				begin 
  					l_feed = p_feed.entries[Random.rand(1..100)]
  				end while l_feed == nil
  				l_result.push(l_feed)  					
  			end 
  			return l_result
  		end

  		def save_in_history()
  			@feed.entries.each do |image|
  				HistoryOfPhoto.create(title: image.title, url: image.links[3])
  			end
  		end

end
