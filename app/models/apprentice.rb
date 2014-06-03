class Apprentice < ActiveRecord::Base
  validates :name, presence: true
end
