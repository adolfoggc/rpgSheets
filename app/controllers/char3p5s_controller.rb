class Char3p5sController < ApplicationController
  before_action :set_char3p5, only: [:show, :edit, :update, :destroy]

  # GET /char3p5s
  # GET /char3p5s.json
  def index
    @char3p5s = Char3p5.all
  end

  # GET /char3p5s/1
  # GET /char3p5s/1.json
  def show
  end

  # GET /char3p5s/new
  def new
    @char3p5 = Char3p5.new
  end

  # GET /char3p5s/1/edit
  def edit
  end

  # POST /char3p5s
  # POST /char3p5s.json
  def create
    @char3p5 = Char3p5.new(char3p5_params)

    respond_to do |format|
      if @char3p5.save
        format.html { redirect_to @char3p5, notice: 'Char3p5 was successfully created.' }
        format.json { render :show, status: :created, location: @char3p5 }
      else
        format.html { render :new }
        format.json { render json: @char3p5.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /char3p5s/1
  # PATCH/PUT /char3p5s/1.json
  def update
    respond_to do |format|
      if @char3p5.update(char3p5_params)
        format.html { redirect_to @char3p5, notice: 'Char3p5 was successfully updated.' }
        format.json { render :show, status: :ok, location: @char3p5 }
      else
        format.html { render :edit }
        format.json { render json: @char3p5.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /char3p5s/1
  # DELETE /char3p5s/1.json
  def destroy
    @char3p5.destroy
    respond_to do |format|
      format.html { redirect_to char3p5s_url, notice: 'Char3p5 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_char3p5
      @char3p5 = Char3p5.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def char3p5_params
      params.require(:char3p5).permit(:name, :strength, :dextery, :constitution, :intelligence, :wisdom, :charisma)
    end
end
