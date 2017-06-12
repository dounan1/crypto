Rails.application.routes.draw do
  get '/', to: 'cryptos#query'

  # get 'cryptos/decrypt'
  get '/decrypt', to: 'cryptos#decrypt'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
