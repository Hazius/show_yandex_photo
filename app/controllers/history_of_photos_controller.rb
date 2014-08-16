class HistoryOfPhotosController < ApplicationController
  before_action :set_history_of_photo, only: [:show, :edit, :update, :destroy]

  # GET /history_of_photos
  # GET /history_of_photos.json
  def index
    @history_of_photos = HistoryOfPhoto.all
  end

  # GET /history_of_photos/1
  # GET /history_of_photos/1.json
  def show
  end

  # GET /history_of_photos/new
  def new
    @history_of_photo = HistoryOfPhoto.new
  end

  # GET /history_of_photos/1/edit
  def edit
  end

  # POST /history_of_photos
  # POST /history_of_photos.json
  def create
    @history_of_photo = HistoryOfPhoto.new(history_of_photo_params)

    respond_to do |format|
      if @history_of_photo.save
        format.html { redirect_to @history_of_photo, notice: 'History of photo was successfully created.' }
        format.json { render action: 'show', status: :created, location: @history_of_photo }
      else
        format.html { render action: 'new' }
        format.json { render json: @history_of_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /history_of_photos/1
  # PATCH/PUT /history_of_photos/1.json
  def update
    respond_to do |format|
      if @history_of_photo.update(history_of_photo_params)
        format.html { redirect_to @history_of_photo, notice: 'History of photo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @history_of_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /history_of_photos/1
  # DELETE /history_of_photos/1.json
  def destroy
    @history_of_photo.destroy
    respond_to do |format|
      format.html { redirect_to history_of_photos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_history_of_photo
      @history_of_photo = HistoryOfPhoto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def history_of_photo_params
      params.require(:history_of_photo).permit(:title, :url, :hits)
    end
end
