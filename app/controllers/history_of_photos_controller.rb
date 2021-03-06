class HistoryOfPhotosController < ApplicationController

  before_action :set_history_of_photo, only: [:show, :destroy]

  def index
    if params[:sort_by] == nil
      @history_of_photos = HistoryOfPhoto.all
    elsif params[:sort_by] == "hits"
      @history_of_photos = HistoryOfPhoto.order('hits DESC')
    end
  end

  def show
    @history_of_photo.increment_hits
  end

  def destroy
    @history_of_photo.destroy
    redirect_to history_of_photos_url
  end

  def destroy_all
    HistoryOfPhoto.delete_all
    redirect_to history_of_photos_url
  end

  private
    def set_history_of_photo
      @history_of_photo = HistoryOfPhoto.find(params[:id])
    end

end
