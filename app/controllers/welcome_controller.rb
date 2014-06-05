class WelcomeController < ApplicationController
  def index
    @apprenticeapplication = ApprenticeApplication.new
  end
end
