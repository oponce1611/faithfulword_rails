Rails.application.routes.draw do
  resources :foreignlanguages, :controller => 'foreign_languages'
  get 'foreignlanguages/:foreignlanguage_id/:id' => 'translations#show', as: "translation"
  get 'foreignlanguages/:foreignlanguage_id/:id/edit' => 'translations#edit', as: "edit_translation"
  resources :translations, only: [:create, :destroy] do
    member do
      put :update, as: 'update'
    end
  end
  resources :charges
  

  root 'welcome#index'
  
  resources :events, except: [:new, :edit, :show]
  get '/audiobible' => 'pages#audiobible'
  get '/biblememory' => 'pages#biblememory'
  get '/churchdirectory' => 'pages#churchdirectory'
  get '/doctrinalstatement' => 'pages#doctrinalstatement'
  get '/location' => 'pages#location'
  get '/malawi' => 'pages#malawi'
  get '/ourpastor' => 'pages#ourpastor'
  get '/preaching' => 'preaching#show'
  get '/privacyandterms' => 'pages#privacyandterms'
  get '/psalms' => 'pages#psalms'
  get '/radio' => 'pages#radio'
  get '/service' => 'pages#service'
  get '/soulwinning' => 'pages#soulwinning'
  get '/termsandconditions' => 'pages#termsandconditions'
end
