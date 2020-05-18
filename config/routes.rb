Rails.application.routes.draw do
  namespace :api do
    post "/sessions" => "sessions#create"

    get "/forecasts" => "forecasts#index"

    get "/tempers" => "tempers#index"

    get "/users" => "users#index"
    post "/users" => "users#create"
    get "/users/:id" => "users#show"
    patch "/users/:id" => "users#update"
    delete "/users/:id" => "users#destroy"

    get "/contests" => "contests#index"
    post "/contests" => "contests#create"
    get "/contests/:id" => "contests#show"
    patch "/contests/:id" => "contests#update"
    delete "/contests/:id" => "contests#destroy"

    get "/bets" => "bets#index"
    post "/bets" => "bets#create"
    get "/bets/:id" => "bets#show"
    patch "/bets/:id" => "bets#update"
    delete "/bets/:id" => "bets#destroy"
  end
end
