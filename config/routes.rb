Rails.application.routes.draw do
  root 'welcome#home'
  get 'about', to: 'welcome#about'
  
  resources :wildlives do
    resources :sightings
  end
end
