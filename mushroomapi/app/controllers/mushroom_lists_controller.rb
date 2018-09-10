class MushroomListsController < ApplicationController
  before_action :set_mushroom_list, only: [:show, :update, :destroy]

  # GET /mushroom_lists
  def index
    @mushroom_lists = MushroomList.all

    render json: @mushroom_lists
  end

  # GET /mushroom_lists/1
  def show
    render json: @mushroom_list
  end

  # POST /mushroom_lists
  def create
    @mushroom_list = MushroomList.new(mushroom_list_params)

    if @mushroom_list.save
      render json: @mushroom_list, status: :created, location: @mushroom_list
    else
      render json: @mushroom_list.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /mushroom_lists/1
  def update
    if @mushroom_list.update(mushroom_list_params)
      render json: @mushroom_list
    else
      render json: @mushroom_list.errors, status: :unprocessable_entity
    end
  end

  # DELETE /mushroom_lists/1
  def destroy
    @mushroom_list.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mushroom_list
      @mushroom_list = MushroomList.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def mushroom_list_params
      params.require(:mushroom_list).permit(:name, :user_id, :mushroom_id)
    end
end
