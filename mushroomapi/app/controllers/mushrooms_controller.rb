class MushroomsController < ApplicationController
  before_action :set_mushroom, only: [:show, :update, :destroy]

  # GET /mushrooms
  def index
    @mushrooms = Mushroom.all

    render json: @mushrooms
  end

  # GET /mushrooms/1
  def show
    render json: @mushroom
  end

  # POST /mushrooms
  def create
    @mushroom = Mushroom.new(mushroom_params)

    if @mushroom.save
      render json: @mushroom, status: :created, location: @mushroom
    else
      render json: @mushroom.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /mushrooms/1
  def update
    if @mushroom.update(mushroom_params)
      render json: @mushroom
    else
      render json: @mushroom.errors, status: :unprocessable_entity
    end
  end

  # DELETE /mushrooms/1
  def destroy
    @mushroom.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mushroom
      @mushroom = Mushroom.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def mushroom_params
      params.require(:mushroom).permit(:latin_name, :string)
    end
end
