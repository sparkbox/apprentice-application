class WelcomeController < ApplicationController

  def new
    @apprenticeform = ApprenticeForm.new
  end

  # def update
  #   @apprenticeform = ApprenticeForm.find_by_token(params[:id])
  #   @apprenticeform.update_attributes(apprentice_form_params)
  #   redirect_to edit_second_step_path
  # end

  # private
  # def apprentice_form_params
  #   params.require(:apprentice_form).permit(:first_name, :last_name, :email, :start_date, :end_date, :willing_to_move, :id)
  # end

end

