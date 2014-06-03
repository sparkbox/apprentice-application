require 'test_helper'

class ApprenticeapplicationTest < ActiveSupport::TestCase

  def setup
    @a = apprenticeapplications(:bob)
  end

  test 'valid only with all attributes present' do
    assert @a.valid?, 'Apprentice application was not valid'
  end

  test 'it should be invalid with an empty name' do
    @a.name = ''
    assert !@a.valid?, 'invalid without a name'
  end
end
