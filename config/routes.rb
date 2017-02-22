Rails.application.routes.draw do
  root 'welcome#index'
  get '/preaching' => 'preaching#show'
  get '/soulwinning' => 'soulwinning#show'
  get '/ourpastor' => 'ourpastor#show'
  get '/service' => 'service#show'
  get '/location' => 'location#show'
  get '/biblememory' => 'biblememory#show'
  get '/events' => 'events#show'
  get '/doctrinalstatement' => 'doctrinalstatement#show'
  get '/churchdirectory' => 'churchdirectory#show'
  get '/psalms' => 'psalms#show'
  get '/radio' => 'radio#show'
  get '/audiobible' => 'audiobible#show'
  get '/malawi' => 'malawi#show'
  get '/privacypolicy' => 'privacypolicy#show'
  get '/termsandconditions' => 'termsandconditions#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
