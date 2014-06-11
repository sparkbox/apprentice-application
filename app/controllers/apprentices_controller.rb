class ApprenticesController < ApplicationController
  before_action :set_apprentice, only: [:show, :edit, :update, :destroy]

  # GET /apprentices
  # GET /apprentices.json
  def index
    @apprentices = Apprentice.all
  end

  # GET /apprentices/1
  # GET /apprentices/1.json
  def show
  end

  # GET /apprentices/new
  def new
    @apprentice = Apprentice.new
  end

  # GET /apprentices/1/edit
  def edit
  end

  # POST /apprentices
  # POST /apprentices.json
  def create
    @apprentice = Apprentice.new(params[:apprentice])

    respond_to do |format|
      if @apprentice.save
        format.html { redirect_to @apprentice, notice: 'Apprentice was successfully created.' }
        format.json { render :show, status: :created, location: @apprentice }
      else
        format.html { render :new }
        format.json { render json: @apprentice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /apprentices/1
  # PATCH/PUT /apprentices/1.json
  def update
    respond_to do |format|
      if @apprentice.update(apprentice_params)
        format.html { redirect_to @apprentice, notice: 'Apprentice was successfully updated.' }
        format.json { render :show, status: :ok, location: @apprentice }
      else
        format.html { render :edit }
        format.json { render json: @apprentice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apprentices/1
  # DELETE /apprentices/1.json
  def destroy
    @apprentice.destroy
    respond_to do |format|
      format.html { redirect_to apprentices_url, notice: 'Apprentice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apprentice
      @apprentice = Apprentice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def apprentice_params
      params.require(:apprentice).permit(:name, :email)
    end
end
