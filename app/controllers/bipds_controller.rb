class BipdsController < ApplicationController
  before_action :set_bipd, only: [:show, :edit, :update, :destroy]

  # GET /bipds
  # GET /bipds.json
  def index
    @bipds = Bipd.all
  end

  # GET /bipds/1
  # GET /bipds/1.json
  def show
  end

  # GET /bipds/new
  def new
    @bipd = Bipd.new
  end

  # GET /bipds/1/edit
  def edit
  end

  # POST /bipds
  # POST /bipds.json
  def create
    @bipd = Bipd.new(bipd_params)

    respond_to do |format|
      if @bipd.save
        format.html { redirect_to @bipd, notice: 'Bipd was successfully created.' }
        format.json { render action: 'show', status: :created, location: @bipd }
      else
        format.html { render action: 'new' }
        format.json { render json: @bipd.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bipds/1
  # PATCH/PUT /bipds/1.json
  def update
    respond_to do |format|
      if @bipd.update(bipd_params)
        format.html { redirect_to @bipd, notice: 'Bipd was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @bipd.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bipds/1
  # DELETE /bipds/1.json
  def destroy
    @bipd.destroy
    respond_to do |format|
      format.html { redirect_to bipds_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bipd
      @bipd = Bipd.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bipd_params
      params.require(:bipd).permit(:medical, :submission_id)
    end
end
