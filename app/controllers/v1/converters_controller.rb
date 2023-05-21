# frozen_string_literal: true

module V1
  class ConvertersController < ApplicationController
    protect_from_forgery with: :null_session

    def convert
      csv_data = Converter.convert_to_csv(request.body.read)
      render plain: csv_data, status: :ok, content_type: 'text/csv'
    rescue JSON::ParserError
      render plain: 'Invalid JSON payload', status: :bad_request
    end
  end
end
