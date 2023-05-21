require 'test_helper'

class ConverterTest < ActiveSupport::TestCase
  test 'converts JSON payload to CSV' do
    json_payload = '[{"name": "John", "age": 30}, {"name": "Jane", "age": 25}]'
    expected_csv = "name,age\nJohn,30\nJane,25\n"

    csv_data = Converter.convert_to_csv(json_payload)

    assert_equal expected_csv, csv_data
  end
end
