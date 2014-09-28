class HistoryOfPhoto < ActiveRecord::Base

  def self.save_in_history(p_photo)
    HistoryOfPhoto.create(title: p_photo.title, url: p_photo.links[3])
  end

  def increment_hits
    self.hits += 1
    self.save
  end

end
