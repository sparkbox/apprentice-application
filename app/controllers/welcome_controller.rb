class WelcomeController < ApplicationController

  # GET /apprentices
  # GET /apprentices.json
  def index
    @apprenticeform = ApprenticeForm.new
  end

  # GET /apprentices/1
  # GET /apprentices/1.json
  def show
  end

  # GET /apprentices/1/edit
  def edit
  end

  def create
    @apprenticeform = ApprenticeForm.new(params[:apprenticeform])

    respond_to do |format|
      if @apprenticeform.save
        format.html { redirect_to @apprenticeform, notice: 'Apprentice was successfully created.' }
        format.json { render :show, status: :created, location: @apprenticeform }
      else
        format.html { render :new }
        format.json { render json: @apprenticeform.errors, status: :unprocessable_entity }
      end
    end
  end
end

