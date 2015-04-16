require 'test_helper'

class JewelApiTest < ActionDispatch::IntegrationTest
  setup { host! 'api.gemstore.com' }

  test 'as a user, I want to get all the gems' do
    get '/jewels'
    assert_equal 200, response.status
    refute_empty response.body
  end

  test 'as a user, I want to get a jewel by an id' do
    jewel = Jewel.create!(name: 'RubyGem', price: 10.20)
    get "/jewels/#{jewel.id}"
    assert_equal 200, response.status

    jewel_response = json(response.body)
    assert_equal jewel.name, jewel_response[:name]
    assert_equal jewel.price.to_s, jewel_response[:price].to_s
  end
  
end
