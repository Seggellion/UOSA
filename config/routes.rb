Rails.application.routes.draw do
  resources :events
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'home#index'
  get 'requirements', to: "home#requirements"
  get 'community', to: "community#index"
  get 'bnn', to: "community#bnn"
  get 'legend', to: "community#legend"
  get 'guidelines', to: "community#guidelines"
  get 'contact', to: "content#contact"
end
