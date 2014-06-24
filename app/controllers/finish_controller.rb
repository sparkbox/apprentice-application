class FinishController < ApplicationController

  def show
    @apprenticeform = ApprenticeForm.find_by_token(params[:id])
  end

  def update
    @apprenticeform = ApprenticeForm.find(params[:apprentice_form][:id])
  end

end
