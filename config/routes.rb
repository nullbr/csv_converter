Rails.application.routes.draw do
  api_version(module: 'V1', header: { name: 'Accept-Version', value: '1' }, default: true) do
    post '/convert', to: 'converters#convert'
  end
end
