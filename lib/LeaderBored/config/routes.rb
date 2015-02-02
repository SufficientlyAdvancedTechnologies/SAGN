Rails.application.routes.draw do
  resources :games do
    resources :leaderboards do
      resources :scores
    end
  end
end
