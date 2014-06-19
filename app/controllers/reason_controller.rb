class ReasonController < ApplicationController

  def show
    @apprenticeform = ApprenticeForm.find(params[:id])
  end

  def update
    @apprenticeform = ApprenticeForm.find(params[:apprentice_form][:id])
    @apprenticeform.update_attributes(apprentice_form_params)
    redirect_to edit_confirm_step_path(params[:apprentice_form][:id])
  end

  private
  def apprentice_form_params
    params.require(:apprentice_form).permit(:first_name, :last_name, :email, :start_date, :end_date, :willing_to_move, :id)
  end

end
