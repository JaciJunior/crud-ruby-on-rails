require 'test/unit'

class Api::V1::users_contoller < Test::Unit::testCase
  def all
            usertest = User.all
            assert_equal('OK',usertest['status'])
      end
end
