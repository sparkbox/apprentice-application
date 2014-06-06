class WelcomeController < ApplicationController
  def index
    @apprenticeform = ApprenticeForm.new
  end

  def create
    @apprenticeform = ApprenticeForm.new(apprentice_params)

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
