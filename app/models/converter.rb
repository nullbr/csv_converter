# frozen_string_literal: true

require 'csv'

class Converter < ApplicationRecord
  def self.convert_to_csv(json_payload)
    data = JSON.parse(json_payload)
    keys = data.first.keys

    CSV.generate do |csv|
      csv << keys
      data.each do |obj|
        csv << obj.values
      end
    end
  end
end
