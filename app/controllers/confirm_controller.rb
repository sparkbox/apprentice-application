class ConfirmController < ApplicationController
  def show
    @apprenticeform = ApprenticeForm.find(params[:id])
  end

end
