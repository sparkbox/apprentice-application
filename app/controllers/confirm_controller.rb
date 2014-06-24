class ConfirmController < ApplicationController
  def show
    @apprenticeform = ApprenticeForm.find_by_token(params[:id])
  end

  def update
    @apprenticeform = ApprenticeForm.find(params[:apprentice_form][:id])
    @apprenticeform.update_attributes(apprentice_form_params)
    redirect_to complete_application_path(@apprenticeform.token)
  end

  private
  def apprentice_form_params
    params.require(:apprentice_form).permit(:id)
  end

end
