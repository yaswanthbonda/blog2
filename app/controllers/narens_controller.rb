class NarensController < ApplicationController
  before_action :set_naren, only: [:show, :edit, :update, :destroy]

  # GET /narens
  # GET /narens.json
  def index
    @narens = Naren.all
  end

  # GET /narens/1
  # GET /narens/1.json
  def show
  end

  # GET /narens/new
  def new
    @naren = Naren.new
  end

  # GET /narens/1/edit
  def edit
  end

  # POST /narens
  # POST /narens.json
  def create
    @naren = Naren.new(naren_params)

    respond_to do |format|
      if @naren.save
        format.html { redirect_to @naren, notice: 'Naren was successfully created.' }
        format.json { render :show, status: :created, location: @naren }
      else
        format.html { render :new }
        format.json { render json: @naren.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /narens/1
  # PATCH/PUT /narens/1.json
  def update
    respond_to do |format|
      if @naren.update(naren_params)
        format.html { redirect_to @naren, notice: 'Naren was successfully updated.' }
        format.json { render :show, status: :ok, location: @naren }
      else
        format.html { render :edit }
        format.json { render json: @naren.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /narens/1
  # DELETE /narens/1.json
  def destroy
    @naren.destroy
    respond_to do |format|
      format.html { redirect_to narens_url, notice: 'Naren was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_naren
      @naren = Naren.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def naren_params
      params.require(:naren).permit(:name, :email, :email_confirmation)
    end
end
