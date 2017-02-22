Rails.application.routes.draw do
  get 'churchdirectory/show'

  root 'welcome#index'
  get '/doctrinalstatement' => 'doctrinalstatement#show'
  get '/churchdirectory' => 'churchdirectory#show'
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
