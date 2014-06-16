class DemographicsController < ApplicationController

  def new
    @apprenticeform = ApprenticeForm.new
  end

  def create
      # return params
      @apprenticeform = ApprenticeForm.create(apprentice_form_params)
      if @apprenticeform.save
        flash[:notice] = 'Apprentice was successfully created.'
        redirect_to step_three_path
      else
        flash[:notice] = 'Empty fields not allowed.'
        render :index
      end

    end

    private
    def apprentice_form_params
      params.require(:apprentice_form).permit(:first_name, :last_name, :email, :start_date, :end_date, :willing_to_move)
    end

  end


#edit and update, PUT.
# Not create, use update attributes
#  active record API