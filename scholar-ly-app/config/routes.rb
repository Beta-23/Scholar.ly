Rails.application.routes.draw do
root to: 'application#angular'

  resources :student, only: [:create, :index, :show] do
    end

  resources :donor, only: [:create, :index, :show] do
  end
end
