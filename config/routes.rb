Rails.application.routes.draw do
  get '/settlements', to: 'settlements#index'
  get '/economic_subjects', to: 'economic_subjects#index'
  get '/settlements/new', to: 'settlements#new', as: :settlement_new
  post '/settlements/create', to: 'settlements#create'
  get '/settlements/:id' , to: 'settlements#show', as: :settlement
  get '/settlements/:id/edit', to: 'settlements#edit', as: :edit_settlement
  patch '/settlements/:id', to: 'settlements#update'
  delete '/settlements/:id', to: 'settlements#destroy', as: :destroy
  root to: 'welcome#index'

  get '/economic_subjects', to: 'economic_subjects#index'
end

