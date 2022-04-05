require 'webmock/rspec'

RSpec.configure do |config|
  config.before(:each) do
    employees_response = {
      :status => 'success',
      :data => []
    }
    stub_request(:get, "http://127.0.0.1:3000/programing_languages").
    to_return(status: 200, body: programing_languages.to_json)
  end

  # ....
end