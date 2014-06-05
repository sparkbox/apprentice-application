require 'test_helper'

class ApprenticeApplicationTest < ActiveSupport::TestCase

  def setup
    @a = apprenticeapplications(:bob)
  end

  test 'when name is invalid' do
    @a.name = nil
    assert !@a.valid?, 'apprentice application is missing a valid name'
  end

  test 'when email is not present' do
    @a.email = ''
    assert !@a.valid?, 'email cannot be empty'
  end

  test 'when name is too long' do
    @a.name = "z"*31
    assert !@a.valid?, 'name cannot be more than 30 characters!'
  end

end
