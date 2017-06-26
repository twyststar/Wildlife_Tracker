Rails.application.routes.draw do
  root :to => 'home#home'

  resources :animals do
  end

  resources :regions do
  end

  resources :sightings do
  end
end
