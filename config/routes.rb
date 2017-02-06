Rails.application.routes.draw do
  resources :wildlives do
    resources :sightings
  end
end
