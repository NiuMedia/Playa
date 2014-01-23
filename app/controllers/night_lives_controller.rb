class NightLivesController < ApplicationController
  before_action :set_night_life, only: [:show, :edit, :update, :destroy]

  # GET /night_lives
  # GET /night_lives.json
  def index
    @night_lives = NightLife.all
  end

  # GET /night_lives/1
  # GET /night_lives/1.json
  def show
  end

  # GET /night_lives/new
  def new
    @night_life = NightLife.new
  end

  # GET /night_lives/1/edit
  def edit
  end

  # POST /night_lives
  # POST /night_lives.json
  def create
    @night_life = NightLife.new(night_life_params)

    respond_to do |format|
      if @night_life.save
        format.html { redirect_to @night_life, notice: 'Night life was successfully created.' }
        format.json { render action: 'show', status: :created, location: @night_life }
      else
        format.html { render action: 'new' }
        format.json { render json: @night_life.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /night_lives/1
  # PATCH/PUT /night_lives/1.json
  def update
    respond_to do |format|
      if @night_life.update(night_life_params)
        format.html { redirect_to @night_life, notice: 'Night life was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @night_life.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /night_lives/1
  # DELETE /night_lives/1.json
  def destroy
    @night_life.destroy
    respond_to do |format|
      format.html { redirect_to night_lives_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_night_life
      @night_life = NightLife.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def night_life_params
      params.require(:night_life).permit(:type, :tel, :mail, :contactp, :contactt, :pavg, :promo)
    end
end
