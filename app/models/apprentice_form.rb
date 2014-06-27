
class ApprenticeForm < ActiveRecord::Base
  tokenize :token
  validates :first_name, presence: true
  # validates :last_name, presence: true

end
