class Apprenticeapplication < ActiveRecord::Base
  validates :name, presence: true, length: {maximum: 30}
  validates :email, presence: true
end
