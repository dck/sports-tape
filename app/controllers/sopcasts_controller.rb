class SopcastsController < ApplicationController
  before_action :set_sopcast, only: [:show, :update, :destroy]

  # GET /sopcasts
  def index
    @sopcasts = Sopcast.all

    render json: @sopcasts
  end

  # GET /sopcasts/1
  def show
    render json: @sopcast
  end

  # POST /sopcasts
  def create
    @sopcast = Sopcast.new(sopcast_params)

    if @sopcast.save
      render json: @sopcast, status: :created, location: @sopcast
    else
      render json: @sopcast.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /sopcasts/1
  def update
    if @sopcast.update(sopcast_params)
      render json: @sopcast
    else
      render json: @sopcast.errors, status: :unprocessable_entity
    end
  end

  # DELETE /sopcasts/1
  def destroy
    @sopcast.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sopcast
      @sopcast = Sopcast.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def sopcast_params
      params.require(:sopcast).permit(:url, :active)
    end
end
