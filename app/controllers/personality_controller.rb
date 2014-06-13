class PersonalityController < ApplicationController

  def index
    @apprenticeform = ApprenticeForm.new
  end

  def create
      @apprenticeform = ApprenticeForm.new
  #   if @apprenticeform.save
  #     flash[:notice] = 'Apprentice was successfully created'
  #     redirect_to welcome_path(@apprenticeform)
  #   end
  # end

    respond_to do |format|
      if @apprenticeform.save
        flash[:notice] = 'Apprentice was successfully created.'
        format.html { redirect_to step_four_path}
        format.json { render :show, status: :created, location: @apprenticeform }
      else
        flash[:notice] = 'Empty fields not allowed.'
        format.html { render :index }
        format.json { render json: @apprenticeform.errors, status: :unprocessable_entity }
      end
    end
  end

end
