class PowerliftingsController < ApplicationController
  before_action :set_powerlifting, only: [:show, :edit, :update, :destroy]

  # GET /powerliftings
  # GET /powerliftings.json
  def index
    @powerliftings = Powerlifting.all
  end

  # GET /powerliftings/1
  # GET /powerliftings/1.json
  def show
  end

  # GET /powerliftings/new
  def new
    @powerlifting = Powerlifting.new
  end

  # GET /powerliftings/1/edit
  def edit
  end

  # POST /powerliftings
  # POST /powerliftings.json
  def create
    @powerlifting = Powerlifting.new(powerlifting_params)

    respond_to do |format|
      if @powerlifting.save
        format.html { redirect_to @powerlifting, notice: 'Powerlifting was successfully created.' }
        format.json { render :show, status: :created, location: @powerlifting }
      else
        format.html { render :new }
        format.json { render json: @powerlifting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /powerliftings/1
  # PATCH/PUT /powerliftings/1.json
  def update
    respond_to do |format|
      if @powerlifting.update(powerlifting_params)
        format.html { redirect_to @powerlifting, notice: 'Powerlifting was successfully updated.' }
        format.json { render :show, status: :ok, location: @powerlifting }
      else
        format.html { render :edit }
        format.json { render json: @powerlifting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /powerliftings/1
  # DELETE /powerliftings/1.json
  def destroy
    @powerlifting.destroy
    respond_to do |format|
      format.html { redirect_to powerliftings_url, notice: 'Powerlifting was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_powerlifting
      @powerlifting = Powerlifting.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def powerlifting_params
      params.require(:powerlifting).permit(:move, :result)
    end
end
