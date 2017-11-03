class ReeldataController < ApplicationController
  before_action :set_reeldatum, only: [:show, :edit, :update, :destroy]

  # GET /reeldata
  # GET /reeldata.json
  def index
    @reeldata = Reeldatum.all
  end

  # GET /reeldata/1
  # GET /reeldata/1.json
  def show
  end

  # GET /reeldata/new
  def new
    @reeldatum = Reeldatum.new
  end

  # GET /reeldata/1/edit
  def edit
  end

  # POST /reeldata
  # POST /reeldata.json
  def create
    @reeldatum = Reeldatum.new(reeldatum_params)

    respond_to do |format|
      if @reeldatum.save
        format.html { redirect_to @reeldatum, notice: 'Reeldatum was successfully created.' }
        format.json { render :show, status: :created, location: @reeldatum }
      else
        format.html { render :new }
        format.json { render json: @reeldatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reeldata/1
  # PATCH/PUT /reeldata/1.json
  def update
    respond_to do |format|
      if @reeldatum.update(reeldatum_params)
        format.html { redirect_to @reeldatum, notice: 'Reeldatum was successfully updated.' }
        format.json { render :show, status: :ok, location: @reeldatum }
      else
        format.html { render :edit }
        format.json { render json: @reeldatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reeldata/1
  # DELETE /reeldata/1.json
  def destroy
    @reeldatum.destroy
    respond_to do |format|
      format.html { redirect_to reeldata_url, notice: 'Reeldatum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reeldatum
      @reeldatum = Reeldatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reeldatum_params
      params.fetch(:reeldatum, {})
    end
end
