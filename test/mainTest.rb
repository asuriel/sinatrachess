require_relative '../main'
require 'test/unit'
require 'rack/test'

class MyAppTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_my_default
    get '/'
    assert_equal "Making the invisible visible and sharing it", last_response.body
  end

  #def test_with_params
#    get '/meet', :name => 'Frank'
#    assert_equal 'Hello Frank!', last_response.body
#  end

end