# frozen_string_literal: true

class CreateConverters < ActiveRecord::Migration[7.0]
  def change
    create_table :converters, &:timestamps
  end
end
