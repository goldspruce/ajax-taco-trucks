class TacoTrucksController < ApplicationController
  before_action :set_taco_truck, only: [:show, :edit, :update, :destroy]

  def index
    @taco_trucks = TacoTruck.all
    @taco_truck = TacoTruck.new
  end

  def show
  end

  def new
    @taco_truck = TacoTruck.new
  end

  def edit
  end

  def create
    # Ajax create!!!!!!!
    @taco_truck = TacoTruck.new(taco_truck_params)

    respond_to do |format|
      if @taco_truck.save
        # Because we put format.js here, the create action will look for a create.js.erb file in our view folder
        format.js{}
        # Make sure to put the empty curly braces after format.js
      else
        # You can handle your error case here, if the taco truck doesn't save to the database
      end
    end
  end

  def update
    respond_to do |format|
      if @taco_truck.update(taco_truck_params)
        format.html { redirect_to @taco_truck, notice: 'Taco truck was successfully updated.' }
        format.json { render :show, status: :ok, location: @taco_truck }
      else
        format.html { render :edit }
        format.json { render json: @taco_truck.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    # Ajax destroy!!!!!!!!
    @taco_truck.destroy
    # You need to return head :ok, to send a 200 status and prevent you from getting a network error in your browser
    head :ok
  end

  private
    def set_taco_truck
      @taco_truck = TacoTruck.find(params[:id])
    end

    def taco_truck_params
      params.require(:taco_truck).permit(:name, :rating, :roach_count, :price)
    end
end
