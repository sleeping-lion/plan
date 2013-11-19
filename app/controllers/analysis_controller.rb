class AnalysisController < ApplicationController
  before_action :set_analysis, only: [:show, :edit, :update, :destroy]

  # GET /analysis
  # GET /analysis.json
  def index
    @analysis = Analysis.all
  end

  # GET /analysis/1
  # GET /analysis/1.json
  def show
  end

  # GET /analysis/new
  def new
    @analysis = Analysis.new
  end

  # GET /analysis/1/edit
  def edit
  end

  # POST /analysis
  # POST /analysis.json
  def create
    @analysis = Analysis.new(analysis_params)

    respond_to do |format|
      if @analysis.save
        format.html { redirect_to @analysis, notice: 'Analysis was successfully created.' }
        format.json { render action: 'show', status: :created, location: @analysis }
      else
        format.html { render action: 'new' }
        format.json { render json: @analysis.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /analysis/1
  # PATCH/PUT /analysis/1.json
  def update
    respond_to do |format|
      if @analysis.update(analysis_params)
        format.html { redirect_to @analysis, notice: 'Analysis was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @analysis.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /analysis/1
  # DELETE /analysis/1.json
  def destroy
    @analysis.destroy
    respond_to do |format|
      format.html { redirect_to analysis_index_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_analysis
      @analysis = Analysis.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def analysis_params
      params.require(:analysis).permit(:title)
    end
end
