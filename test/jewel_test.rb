require 'test_helper'

class JewelApiTest < ActionDispatch::IntegrationTest
  setup { host! 'api.gemstore.com' }

  test 'returns list of gems' do
    get '/jewels'
    assert_equal 200, response.status
    refute_empty response.body
  end

  
end
