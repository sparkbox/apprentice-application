require 'test_helper'

class ApprenticeTest < ActiveSupport::TestCase
  test "invalid without a name" do
    a = Apprentice.new
    assert !a.valid?, "Name is not being validated"
  end
end
