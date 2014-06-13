class WelcomeController < ApplicationController

  # GET /apprentices
  # GET /apprentices.json
  def index
    @apprenticeform = ApprenticeForm.new
  end

  def new
    @apprenticeform = ApprenticeForm.new
  end

  def edit
  end

  def create

    # return params
    @apprenticeform = ApprenticeForm.new(apprentice_form_params)
  #   if @apprenticeform.save
  #     flash[:notice] = 'Apprentice was successfully created'
  #     redirect_to welcome_path(@apprenticeform)
  #   end
  # end

    respond_to do |format|
      if @apprenticeform.save
        flash[:notice] = 'Apprentice was successfully created.'
        format.html { redirect_to welcome_path(@apprenticeform) }
        format.json { render :show, status: :created, location: @apprenticeform }
      else
        flash[:notice] = 'Empty fields not allowed.'
        format.html { render :index }
        format.json { render json: @apprenticeform.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  def apprentice_form_params
    params.require(:apprentice_form).permit(:first_name, :last_name, :email, :start_date, :end_date, :willing_to_move)
  end

end

