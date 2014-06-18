class PersonalityController < ApplicationController

  def show
    @apprenticeform = ApprenticeForm.find(params[:id])
  end

  def create
    @apprenticeform = ApprenticeForm.create(apprentice_form_params)
    if @apprenticeform.errors.any?
      render :new
    else
      redirect_to edit_confirm_step_path(@apprenticeform)
    end
  end

  private
  def apprentice_form_params
    params.require(:apprentice_form).permit(:about_me)
  end
end
