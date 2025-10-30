Rails.application.routes.draw do
  devise_for :users

  namespace :api do
    namespace :v1 do
      post "user_token", to: "user_token#create"
      resources :locations do
        resources :recordings
      end
    end
  end

  root to: "locations#index"
end
