require 'test_helper'

class ApprenticeFormTest < ActiveSupport::TestCase

  def setup
    @a = apprentice_forms(:bob)
  end

  test 'when first name is invalid' do
    @a.first_name = nil
    assert !@a.valid?, 'apprentice application is missing a valid name'
  end

  test 'when last name is invalid' do
    @a.last_name = nil
    assert !@a.valid?, 'apprentice application is missing a valid last name'
  end

  # test 'when email is not present' do
  #   @a.email = ''
  #   assert !@a.valid?, 'email cannot be empty'
  # end

  # test 'when name is too long' do
  #   @a.first_name = "z"*31
  #   assert !@a.valid?, 'name cannot be more than 30 characters!'
  # end

end
