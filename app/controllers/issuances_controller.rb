class IssuancesController < ApplicationController
  before_action :set_issuance, only: [:show, :edit, :update, :destroy]
  rescue_from ActiveRecord::RecordNotFound, with: :invalid_issuance

  # GET /issuances
  # GET /issuances.json
  def index
    @issuances = Issuance.all
  end

  # GET /issuances/1
  # GET /issuances/1.json
  def show
  end

  # GET /issuances/new
  def new
    @issuance = Issuance.new
  end

  # GET /issuances/1/edit
  def edit
  end

  # POST /issuances
  # POST /issuances.json
  def create
    @issuance = Issuance.new(issuance_params)

    respond_to do |format|
      if @issuance.save
        format.html { redirect_to @issuance, notice: 'Issuance was successfully created.' }
        format.json { render :show, status: :created, location: @issuance }
      else
        format.html { render :new }
        format.json { render json: @issuance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /issuances/1
  # PATCH/PUT /issuances/1.json
  def update
    respond_to do |format|
      if @issuance.update(issuance_params)
        format.html { redirect_to @issuance, notice: 'Issuance was successfully updated.' }
        format.json { render :show, status: :ok, location: @issuance }
      else
        format.html { render :edit }
        format.json { render json: @issuance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /issuances/1
  # DELETE /issuances/1.json
  def destroy
    @issuance.destroy if @issuance.id == session[:issuance_id]
    session[:issuance_id] = nil
    respond_to do |format|
      format.html { redirect_to issuances_url, notice: 'Issuance was successfully descarded.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_issuance
      @issuance = Issuance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def issuance_params
      params[:issuance]
    end

    def invalid_issuance
      logger.error "Attempt to access invalid cart #{params[:id]}"
      redirect_to store_url, notice: 'Invalid cart'
    end
end
