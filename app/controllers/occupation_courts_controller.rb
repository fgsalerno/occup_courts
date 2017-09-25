class OccupationCourtsController < ApplicationController
  before_action :set_occupation_court, only: [:show, :edit, :update, :destroy]

  # GET /occupation_courts
  # GET /occupation_courts.json
  def index
    @occupation_courts = OccupationCourt.all
  end

  # GET /occupation_courts/1
  # GET /occupation_courts/1.json
  def show
  end

  # GET /occupation_courts/new
  def new
    @occupation_court = OccupationCourt.new
  end

  # GET /occupation_courts/1/edit
  def edit
  end

  # POST /occupation_courts
  # POST /occupation_courts.json
  def create
    @occupation_court = OccupationCourt.new(occupation_court_params)

    respond_to do |format|
      if @occupation_court.save
        format.html { redirect_to @occupation_court, notice: 'Occupation court was successfully created.' }
        format.json { render :show, status: :created, location: @occupation_court }
      else
        format.html { render :new }
        format.json { render json: @occupation_court.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /occupation_courts/1
  # PATCH/PUT /occupation_courts/1.json
  def update
    respond_to do |format|
      if @occupation_court.update(occupation_court_params)
        format.html { redirect_to @occupation_court, notice: 'Occupation court was successfully updated.' }
        format.json { render :show, status: :ok, location: @occupation_court }
      else
        format.html { render :edit }
        format.json { render json: @occupation_court.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /occupation_courts/1
  # DELETE /occupation_courts/1.json
  def destroy
    @occupation_court.destroy
    respond_to do |format|
      format.html { redirect_to occupation_courts_url, notice: 'Occupation court was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_occupation_court
      @occupation_court = OccupationCourt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def occupation_court_params
      params.require(:occupation_court).permit(:dia_hora_inicio, :dia_hora_fin, :obsv, :court_id, :partner_id, :employee_id)
    end
end
