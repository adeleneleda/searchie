Rails.application.routes.draw do
  get "/", to: "omdb#index"
  post "/", to: "omdb#index"
end
