Rails.application.routes.draw do
  root "students#index"
  get "/students" => "students#trying"
  get 'polar_bear_places/index'
  resources :students
  get "/polarbearhousing" => "polar_bear_places#index"
  # root "PPLFinal-Project-2022#index"
  # get "PPL-Final-Project-2022" => "PPL-Final-Project-2022#index"
  get "/" => "students#index"
  post "/" => "polar_bear_places#handlePost"
end
