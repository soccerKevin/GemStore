require 'test_helper'

class JewelApiTest < ActionDispatch::IntegrationTest
  setup do
    host! 'api.gemstore.com'
    @jewel = Jewel.create!(name: 'RubyGem', price: 10.20)
  end

  test 'As a user, I want to get jewels in JSON' do
    get '/jewels', {}, { 'Accept' => Mime::JSON }
    assert_equal 200, response.status
    assert_equal Mime::JSON, response.content_type
  end

  test 'As a user, I want to get jewels in XML' do
    get '/jewels', {}, { 'Accept' => Mime::XML }
    assert_equal 200, response.status
    assert_equal Mime::XML, response.content_type
  end

  test 'As a user, I want to get all the gems' do
    get '/jewels', {}, { 'Accept' => Mime::JSON }
    assert_equal 200, response.status
    refute_empty response.body
  end

  test 'As a user, I want to get a jewel by an id' do
    get "/jewels/#{@jewel.id}", {}, { 'Accept' => Mime::JSON }
    assert_equal 200, response.status

    jewel_response = json(response.body)
    assert_equal @jewel.name, jewel_response[:name]
    assert_equal @jewel.price.to_s, jewel_response[:price].to_s
  end

  test 'As a user, I want to create new jewels to sell in my store' do
    post '/jewels',
    { jewel:
      { name: 'Emerald', price: 20.56 }
    }.to_json,
    { 'Accept' => Mime::JSON, 'Content-Type' => Mime::JSON.to_s }

    assert_equal 201, response.status
    assert_equal Mime::JSON, response.content_type

    jewel = json(response.body)
  end

  test 'As a user, I want to be able to delete old jewels' do
    delete "/jewels/#{@jewel.id}"
    assert_equal 204, response.status
  end
  
end
