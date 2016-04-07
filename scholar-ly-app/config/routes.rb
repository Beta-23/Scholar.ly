Rails.application.routes.draw do
root to: 'students#new'

  resources :students, only: [:create, :index, :show, :new] do
    end

  resources :donor, only: [:create, :index, :show] do
  end

  # these routes are for showing users a login form, logging them in, and logging them out.
  get '/signup', to: 'students#new'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'


end
