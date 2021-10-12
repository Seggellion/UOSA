Rails.application.routes.draw do
  resources :events
  resources :screenshots, except: :index
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'home#index'
  get 'requirements', to: "home#requirements"
  get 'beginning', to: "new_player_center#beginning"
  get 'new_player_center', to: "new_player_center#index"
  get 'connecting', to: "new_player_center#connecting"
  get 'beginning', to: "new_player_center#beginning"
  get 'rules', to: "new_player_center#rules"
  get 'downloads', to: "home#downloads"
  get 'community', to: "community#index"
  get 'bnn', to: "community#bnn"
  get 'legend', to: "community#legend"
  get 'guidelines', to: "community#guidelines"
  get 'screenshots', to: "home#screenshots"
  get 'contact', to: "content#contact"
end
