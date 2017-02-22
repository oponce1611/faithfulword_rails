Rails.application.routes.draw do
  root 'welcome#index'
  get '/doctrinalstatement' => 'doctrinalstatement#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
