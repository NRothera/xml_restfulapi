require_relative './spec_helper'

describe DevicesController do

  include Rack::Test::Methods

  def app
    DevicesController.new
  end

  context "GET '/'" do

    it 'loads homepage' do
      get '/'
      expect(last_response.status).to eq 200
    end

  end

  context "GET '/:name'" do

    it 'should get good response' do
      get '/ct'
      expect(last_response.status).to eq 200
    end


  end


end
