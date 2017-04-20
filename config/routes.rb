Rails.application.routes.draw do
  root 'welcome#index'
  
  get '/preaching' => 'preaching#index'
  resources :foreignlanguages, :controller => 'foreign_languages'
  
  get 'foreignlanguages/:foreignlanguage_id/:id/edit' => 'translations#edit', as: "edit_translation"
  get 'foreignlanguages/:foreignlanguage_id/:id' => 'translations#show', as: "translation"
  resources :translations, only: [:create, :destroy] do
    member do
      put :update, as: 'update'
    end
  end
  
  resources :charges
  
  resources :events, except: [:new, :edit, :show]
  
  get '/audiobible' => 'pages#audiobible'
  get '/biblememory' => 'pages#biblememory'
  get '/churchdirectory' => 'pages#churchdirectory'
  get '/doctrinalstatement' => 'pages#doctrinalstatement'
  get '/live' => 'pages#live'
  get '/location' => 'pages#location'
  get '/malawi' => 'pages#malawi'
  get '/ourpastor' => 'pages#ourpastor'
  get '/privacyandterms' => 'pages#privacyandterms'
  get '/psalms' => 'pages#psalms'
  get '/radio' => 'pages#radio'
  get '/service' => 'pages#service'
  get '/soulwinning' => 'pages#soulwinning'
  get '/termsandconditions' => 'pages#termsandconditions'
  
  get '/:id' => 'preaching#show', as: "sermon"
  get '/:id/edit' => 'preaching#edit', as: "edit_sermon"
  get '/:id/file' => 'preaching#file', as: "file_sermon"
  resources :sermons, :controller => 'preaching', except: [:show, :index]
end
