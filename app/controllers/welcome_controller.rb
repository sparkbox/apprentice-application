class WelcomeController < ApplicationController
  def index
    @apprenticeform = ApprenticeForm.new
  end
end
