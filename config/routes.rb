# frozen_string_literal: true

Rails.application.routes.draw do
  root 'home#index'

  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'

  api_version(module: 'V1', header: { name: 'Accept-Version', value: '1' }, default: true) do
    post '/convert', to: 'converters#convert'
  end
end
