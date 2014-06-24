
class ApprenticeForm < ActiveRecord::Base
  tokenize :token
  # validates :first_name, presence: true, length: {maximum: 50}
  # validates :last_name, presence: true
end
