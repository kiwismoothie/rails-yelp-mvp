Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  resources :restaurants, only: [:index, :show, :new, :create] do # génère les 7 routes du crud

    # GET restaurants/:restaurant_id/reviews/new
    # POST restaurants/:restaurant_id/reviews
    resources :reviews, only: [:new, :create]
  end
end
