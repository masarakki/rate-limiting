require 'spec_helper'

describe "Fixed/rpd rule request" do
  include Rack::Test::Methods

  it 'should be apply if http method matched' do
    expect(app).to receive(:apply_rule).once
    get '/get_method', {}, {'HTTP_ACCEPT' => "text/html"}
    post '/get_method', {}, {'HTTP_ACCEPT' => "text/html"}
  end
end
