class WelcomeController < ApplicationController
  def index
    @apprenticeapplication = Apprenticeapplication.new
  end
end
