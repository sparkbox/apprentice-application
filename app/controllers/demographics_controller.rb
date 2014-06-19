class DemographicsController < ApplicationController

  def show
    @apprenticeform = ApprenticeForm.find(params[:id])
  end

  # def create
  #   # @apprenticeform = ApprenticeForm.create(apprentice_form_params)
  #   if @apprenticeform.errors.any?
  #     render :new
  #   else
  #     redirect_to edit_third_step_path(@apprenticeform)
  #   end

  # end

  def update
    @apprenticeform = ApprenticeForm.find(params[:apprentice_form][:id])
    @apprenticeform.update_attributes(apprentice_form_params)
    redirect_to edit_third_step_path(params[:apprentice_form][:id])
  end

  private
  def apprentice_form_params
    params.require(:apprentice_form).permit(:phone_number, :address, :url, :social_url, :id)
  end

end


#edit and update, PUT.
# Not create, use update attributes
#  active record API