class ApprenticeForm < ActiveRecord::Base

  attr_writer :current_step

  validates :first_name, presence: true, length: {maximum: 50}
  validates :last_name, presence: true

  def current_step
    @current_step || steps.first
  end

  def steps
    %w[basic_information demographic personality confirmation]
  end

end
