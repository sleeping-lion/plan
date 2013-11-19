class ProfitsController < ApplicationController
  before_action :set_profit, only: [:show, :edit, :update, :destroy]

  # GET /profit
  # GET /profit.json
  def index
    @profit = Profit.all
  end

  # GET /profit/1
  # GET /profit/1.json
  def show
  end

  # GET /profit/new
  def new
    @profit = Profit.new
  end

  # GET /profit/1/edit
  def edit
  end

  # POST /profit
  # POST /profit.json
  def create
    @profit = Profit.new(profit_params)

    respond_to do |format|
      if @profit.save
        format.html { redirect_to @profit, notice: 'Profit was successfully created.' }
        format.json { render action: 'show', status: :created, location: @profit }
      else
        format.html { render action: 'new' }
        format.json { render json: @profit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profit/1
  # PATCH/PUT /profit/1.json
  def update
    respond_to do |format|
      if @profit.update(profit_params)
        format.html { redirect_to @profit, notice: 'Profit was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @profit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profit/1
  # DELETE /profit/1.json
  def destroy
    @profit.destroy
    respond_to do |format|
      format.html { redirect_to profit_index_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profit
      @profit = Profit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profit_params
      params.require(:profit).permit(:title)
    end
end
