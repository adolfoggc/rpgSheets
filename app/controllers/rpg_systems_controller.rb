class RpgSystemsController < ApplicationController
  before_action :set_rpg_system, only: [:show, :edit, :update, :destroy]

  # GET /rpg_systems
  # GET /rpg_systems.json
  def index
    @rpg_systems = RpgSystem.all
  end

  # GET /rpg_systems/1
  # GET /rpg_systems/1.json
  def show
  end

  # GET /rpg_systems/new
  def new
    @rpg_system = RpgSystem.new
  end

  # GET /rpg_systems/1/edit
  def edit
  end

  # POST /rpg_systems
  # POST /rpg_systems.json
  def create
    @rpg_system = RpgSystem.new(rpg_system_params)

    respond_to do |format|
      if @rpg_system.save
        format.html { redirect_to @rpg_system, notice: 'Rpg system was successfully created.' }
        format.json { render :show, status: :created, location: @rpg_system }
      else
        format.html { render :new }
        format.json { render json: @rpg_system.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rpg_systems/1
  # PATCH/PUT /rpg_systems/1.json
  def update
    respond_to do |format|
      if @rpg_system.update(rpg_system_params)
        format.html { redirect_to @rpg_system, notice: 'Rpg system was successfully updated.' }
        format.json { render :show, status: :ok, location: @rpg_system }
      else
        format.html { render :edit }
        format.json { render json: @rpg_system.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rpg_systems/1
  # DELETE /rpg_systems/1.json
  def destroy
    @rpg_system.destroy
    respond_to do |format|
      format.html { redirect_to rpg_systems_url, notice: 'Rpg system was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rpg_system
      @rpg_system = RpgSystem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rpg_system_params
      params.require(:rpg_system).permit(:name)
    end
end
