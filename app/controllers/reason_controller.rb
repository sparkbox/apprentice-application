class ReasonController < ApplicationController

def new
    @apprenticeform = ApprenticeForm.new
  end

  def create

    # return params
    @apprenticeform = ApprenticeForm.create(apprentice_form_params)

    if @apprenticeform.errors.any?
      render :new
    else
      redirect_to edit_second_step_path(@apprenticeform)
    end
  end

  private
  def apprentice_form_params
    params.require(:apprentice_form).permit(:first_name, :last_name, :email, :start_date, :end_date, :willing_to_move)
  end

end
