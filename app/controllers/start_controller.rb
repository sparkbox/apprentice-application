class StartController < ApplicationController

  def show
    @apprenticeform = ApprenticeForm.find_by_token(params[:id])
  end

  def create
    # debugger
    @apprenticeform = ApprenticeForm.new(apprentice_form_params)
    if @apprenticeform.valid?
      @apprenticeform.save!
      redirect_to edit_second_step_path(@apprenticeform.token)
    else
      render :show
    end
  end

  def update
    @apprenticeform = ApprenticeForm.find(params[:apprentice_form][:id])
    @apprenticeform.update_attributes(apprentice_form_params)
    redirect_to edit_second_step_path(@apprenticeform.token)
  end

  private
  def apprentice_form_params
    params.require(:apprentice_form).permit(:first_name, :last_name, :email, :start_date, :end_date, :willing_to_move)
  end

end
