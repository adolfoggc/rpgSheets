class Char3p5SheetsController < ApplicationController
  before_action :set_char3p5_sheet, only: [:show, :edit, :update, :destroy]

  # GET /char3p5_sheets
  # GET /char3p5_sheets.json
  def index
    @char3p5_sheets = Char3p5Sheet.all
  end

  # GET /char3p5_sheets/1
  # GET /char3p5_sheets/1.json
  def show
  end

  # GET /char3p5_sheets/new
  def new
    @char3p5_sheet = Char3p5Sheet.new
    @points = 32
  end

  # GET /char3p5_sheets/1/edit
  def edit
    @points = 32
  end

  # POST /char3p5_sheets
  # POST /char3p5_sheets.json
  def create
    @char3p5_sheet = Char3p5Sheet.new(char3p5_sheet_params)
    points
    respond_to do |format|
      if @char3p5_sheet.save
        format.html { redirect_to @char3p5_sheet, notice: 'Char3p5 sheet was successfully created.' }
        format.json { render :show, status: :created, location: @char3p5_sheet }
      else
        format.html { render :new }
        format.json { render json: @char3p5_sheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /char3p5_sheets/1
  # PATCH/PUT /char3p5_sheets/1.json
  def update
    points
    respond_to do |format|
      if @char3p5_sheet.update(char3p5_sheet_params)
        format.html { redirect_to @char3p5_sheet, notice: 'Char3p5 sheet was successfully updated.' }
        format.json { render :show, status: :ok, location: @char3p5_sheet }
      else
        format.html { render :edit }
        format.json { render json: @char3p5_sheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /char3p5_sheets/1
  # DELETE /char3p5_sheets/1.json
  def destroy
    @char3p5_sheet.destroy
    respond_to do |format|
      format.html { redirect_to char3p5_sheets_url, notice: 'Char3p5 sheet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_char3p5_sheet
      @char3p5_sheet = Char3p5Sheet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def char3p5_sheet_params
      params.require(:char3p5_sheet).permit(:name, :strength, :dextery, :constitution, :intelligence, :wisdom, :charisma, :gold_piece, :silver_piece, :cooper_piece, :skills, :feats, :description)
    end
end
