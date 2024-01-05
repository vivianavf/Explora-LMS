require 'rest-client'

class BookmarksController < ApplicationController
  before_action :set_bookmark, only: %i[ show edit update destroy ]
  # BASE_URL = 'https://canvas.docker.com/api/v1/users/self/bookmarks'
  # ACCESS_TOKEN = '7~Yb6tXYHm8k14eReNze0aY4mjZLDrr16GBPTRUuMe03rU7HbmTGSVETGcYhxKc13i'
  # ACCESS_TOKEN = 'vxg8lzP7auWExUH99JtPHr3PpSK2cghfCnx2xbFNVs6PJ30wn7YzO8Q3esPrTj9N'
  # GET /bookmarks or /bookmarks.json
  def index
    @bookmarks = Bookmark.all
    # response = RestClient.get("#{BASE_URL}?access_token=#{ACCESS_TOKEN}")
    # @bookmarks = JSON.parse(response.body)
  end

  # GET /bookmarks/1 or /bookmarks/1.json
  def show
    bookmark_id = params[:id]
    # response = RestClient.get("#{BASE_URL}/#{bookmark_id}?access_token=#{ACCESS_TOKEN}")
    # @bookmark = JSON.parse(response.body)
  end

  # GET /bookmarks/new
  def new
    @bookmark = Bookmark.new
  end

  # GET /bookmarks/1/edit
  def edit
  end

  # POST /bookmarks or /bookmarks.json
  def create
    @bookmark = Bookmark.new(bookmark_params)

    respond_to do |format|
      if @bookmark.save
        format.html { redirect_to bookmark_url(@bookmark), notice: "Bookmark was successfully created." }
        format.json { render :show, status: :created, location: @bookmark }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bookmark.errors, status: :unprocessable_entity }
      end
    end

    # Petición POST para crear un nuevo marcador (reemplaza bookmark_params con tus datos)
    # headers = {
    #   Authorization: "Bearer #{ACCESS_TOKEN}"
    # }

    # response = RestClient.post("#{BASE_URL}?access_token=#{ACCESS_TOKEN}", @bookmark, headers: headers)

    # response = RestClient.post("#{BASE_URL}?access_token=#{ACCESS_TOKEN}", bookmark_params)
    # @bookmark = JSON.parse(response.body)
  end

  # PATCH/PUT /bookmarks/1 or /bookmarks/1.json
  def update
    respond_to do |format|
      if @bookmark.update(bookmark_params)
        format.html { redirect_to bookmark_url(@bookmark), notice: "Bookmark was successfully updated." }
        format.json { render :show, status: :ok, location: @bookmark }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bookmark.errors, status: :unprocessable_entity }
      end
    end

    # Petición PUT/PATCH para actualizar un marcador existente (reemplaza {bookmark_id} y bookmark_params)
    bookmark_id = params[:id]
    # response = RestClient.put("#{BASE_URL}/#{bookmark_id}?access_token=#{ACCESS_TOKEN}", bookmark_params)
    # @bookmark = JSON.parse(response.body)
  end

  # DELETE /bookmarks/1 or /bookmarks/1.json
  def destroy
    @bookmark.destroy!

    respond_to do |format|
      format.html { redirect_to bookmarks_url, notice: "Bookmark was successfully destroyed." }
      format.json { head :no_content }
    end

    # Petición DELETE para eliminar un marcador existente (reemplaza {bookmark_id})
    bookmark_id = params[:id]
    # response = RestClient.delete("#{BASE_URL}/#{bookmark_id}?access_token=#{ACCESS_TOKEN}")
    # Maneja la respuesta según tus necesidades
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bookmark
      @bookmark = Bookmark.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bookmark_params
      params.require(:bookmark).permit(:name, :url, :position, :data)
    end
end
