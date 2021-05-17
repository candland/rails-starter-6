Rails.application.routes.draw do
  resources :api_tokens
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #### ADMIN ####
  namespace :admin do
    authenticate :user, lambda { |u| u.admin? } do
      require "sidekiq/web"
      mount Sidekiq::Web => "/sidekiq"
    end
  end

  #### API ####
  namespace :api do
    get "status", to: "api#status"
    api_version(
      module: "V1",
      header: {name: "Accept", value: "application/api.rails-starter-6.com; version=1"},
      path: {value: "v1"},
      default: true
    ) do
      resource :auth, only: [:create]
      resource :me, controller: :me
    end
  end

  get :dashboard, to: "dashboard#index", as: :dashboard

  get "/healthcheck/", to: "health#check"
  root to: "home#index"
end
