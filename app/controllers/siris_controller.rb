class SirisController < ApplicationController
  before_action :set_siri, only: [:show, :edit, :update, :destroy]

  # GET /siris
  # GET /siris.json
  def index
    @siris = Siri.all
  end

  # GET /siris/1
  # GET /siris/1.json
  def show
  end

  # GET /siris/new
  def new
    @siri = Siri.new
  end

  # GET /siris/1/edit
  def edit
  end

  # POST /siris
  # POST /siris.json
  def create
    @siri = Siri.new(siri_params)

    respond_to do |format|
      if @siri.save
        format.html { redirect_to @siri, notice: 'Siri was successfully created.' }
        format.json { render :show, status: :created, location: @siri }
      else
        format.html { render :new }
        format.json { render json: @siri.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /siris/1
  # PATCH/PUT /siris/1.json
  def update
    respond_to do |format|
      if @siri.update(siri_params)
        format.html { redirect_to @siri, notice: 'Siri was successfully updated.' }
        format.json { render :show, status: :ok, location: @siri }
      else
        format.html { render :edit }
        format.json { render json: @siri.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /siris/1
  # DELETE /siris/1.json
  def destroy
    @siri.destroy
    respond_to do |format|
      format.html { redirect_to siris_url, notice: 'Siri was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_siri
      @siri = Siri.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def siri_params
      params.require(:siri).permit(:name, :email, :email_confirmation)
    end
end
