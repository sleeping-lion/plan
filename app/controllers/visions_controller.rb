class VisionsController < ApplicationController
  before_action :set_vision, only: [:show, :edit, :update, :destroy]

  # GET /vision
  # GET /vision.json
  def index
    @vision = Vision.all
  end

  # GET /vision/1
  # GET /vision/1.json
  def show
  end

  # GET /vision/new
  def new
    @vision = Vision.new
  end

  # GET /vision/1/edit
  def edit
  end

  # POST /vision
  # POST /vision.json
  def create
    @vision = Vision.new(vision_params)

    respond_to do |format|
      if @vision.save
        format.html { redirect_to @vision, notice: 'Vision was successfully created.' }
        format.json { render action: 'show', status: :created, location: @vision }
      else
        format.html { render action: 'new' }
        format.json { render json: @vision.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vision/1
  # PATCH/PUT /vision/1.json
  def update
    respond_to do |format|
      if @vision.update(vision_params)
        format.html { redirect_to @vision, notice: 'Vision was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @vision.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vision/1
  # DELETE /vision/1.json
  def destroy
    @vision.destroy
    respond_to do |format|
      format.html { redirect_to vision_index_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vision
      @vision = Vision.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vision_params
      params.require(:vision).permit(:title)
    end
end
