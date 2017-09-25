class PartnerStatesController < ApplicationController
  before_action :set_partner_state, only: [:show, :edit, :update, :destroy]

  # GET /partner_states
  # GET /partner_states.json
  def index
    @partner_states = PartnerState.all
  end

  # GET /partner_states/1
  # GET /partner_states/1.json
  def show
  end

  # GET /partner_states/new
  def new
    @partner_state = PartnerState.new
  end

  # GET /partner_states/1/edit
  def edit
  end

  # POST /partner_states
  # POST /partner_states.json
  def create
    @partner_state = PartnerState.new(partner_state_params)

    respond_to do |format|
      if @partner_state.save
        format.html { redirect_to @partner_state, notice: 'Partner state was successfully created.' }
        format.json { render :show, status: :created, location: @partner_state }
      else
        format.html { render :new }
        format.json { render json: @partner_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /partner_states/1
  # PATCH/PUT /partner_states/1.json
  def update
    respond_to do |format|
      if @partner_state.update(partner_state_params)
        format.html { redirect_to @partner_state, notice: 'Partner state was successfully updated.' }
        format.json { render :show, status: :ok, location: @partner_state }
      else
        format.html { render :edit }
        format.json { render json: @partner_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /partner_states/1
  # DELETE /partner_states/1.json
  def destroy
    @partner_state.destroy
    respond_to do |format|
      format.html { redirect_to partner_states_url, notice: 'Partner state was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_partner_state
      @partner_state = PartnerState.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def partner_state_params
      params.require(:partner_state).permit(:desc)
    end
end
