class Apprenticeapplication < ActiveRecord::Base
  validates :name, presence: true
end
