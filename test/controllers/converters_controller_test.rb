require 'test_helper'

class ConvertersControllerTest < ActionDispatch::IntegrationTest
  test 'converts JSON payload to CSV' do
    json_payload = '[{"name": "John", "age": 30}, {"name": "Jane", "age": 25}]'
    expected_csv = "name,age\nJohn,30\nJane,25\n"

    post '/convert', params: json_payload, headers: { 'Content-Type': 'application/json' }

    assert_response :success
    assert_equal expected_csv, @response.body
    assert_equal 'text/csv; charset=utf-8', @response.content_type
  end

  test 'returns 400 Bad Request for invalid JSON payload' do
    invalid_json_payload = 'invalid-json'

    post '/convert', params: invalid_json_payload, headers: { 'Content-Type': 'application/json' }

    assert_response :bad_request
    assert_equal 'Invalid JSON payload', @response.body
  end
end
