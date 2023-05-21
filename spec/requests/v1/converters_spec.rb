require 'swagger_helper'

RSpec.describe 'v1/converters', type: :request do
  path '/convert' do
    post 'Converts JSON to CSV' do
      consumes 'application/json'
      produces 'text/csv'
      tags 'Converters'

      parameter name: :json_payload, in: :body, schema: {
        type: :array,
        items: {
          type: :object
        }
      }

      response '200', 'CSV generated successfully' do
        schema type: :string

        let(:json_payload) { [{ key1: 'value1' }, { key2: 'value2' }] }

        run_test!
      end

      response '400', 'Invalid JSON payload' do
        schema type: :string

        let(:json_payload) { 'invalid json' }

        run_test!
      end
    end
  end
end
