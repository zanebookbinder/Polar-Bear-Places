Rails.application.routes.draw do
  get 'polar_bear_places/index'
  resources :students
  # get "/polarbearhousing" => 
  # root "PPLFinal-Project-2022#index"
  # get "PPL-Final-Project-2022" => "PPL-Final-Project-2022#index"
  # get "/" => "PPL-Final-Project-2022#index"
  # post "/" => "PPL-Final-Project-2022#enterRoom"
end
