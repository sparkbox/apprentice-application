class FinishController < ApplicationController

  def show
    @apprenticeform = ApprenticeForm.find(params[:id])
  end

  def update
    @apprenticeform = ApprenticeForm.find(params[:apprentice_form][:id])
  end

end
