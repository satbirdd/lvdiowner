class AuthenticaionsController < ApplicationController
  before_action :set_authenticaion, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:new, :create]

  # GET /authenticaions
  # GET /authenticaions.json
  def index
    @authenticaions = Authenticaion.all
  end

  # GET /authenticaions/1
  # GET /authenticaions/1.json
  def show
  end

  # GET /authenticaions/new
  def new
    @authenticaion = Authenticaion.new
  end

  # GET /authenticaions/1/edit
  def edit
  end

  # POST /authenticaions
  # POST /authenticaions.json
  def create
    @authenticaion = Authenticaion.new(authenticaion_params)

    respond_to do |format|
      if @authenticaion.save
        format.html { redirect_to @authenticaion, notice: 'Authenticaion was successfully created.' }
        format.json { render :show, status: :created, location: @authenticaion }
      else
        format.html { render :new }
        format.json { render json: @authenticaion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /authenticaions/1
  # PATCH/PUT /authenticaions/1.json
  def update
    respond_to do |format|
      if @authenticaion.update(authenticaion_params)
        format.html { redirect_to @authenticaion, notice: 'Authenticaion was successfully updated.' }
        format.json { render :show, status: :ok, location: @authenticaion }
      else
        format.html { render :edit }
        format.json { render json: @authenticaion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /authenticaions/1
  # DELETE /authenticaions/1.json
  def destroy
    @authenticaion.destroy
    respond_to do |format|
      format.html { redirect_to authenticaions_url, notice: 'Authenticaion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_authenticaion
      @authenticaion = Authenticaion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def authenticaion_params
      params.require(:authenticaion).permit(:room_id, :qq, :desc)
    end
end
