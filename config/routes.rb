Rails.application.routes.draw do
  resources :my_data
  root "polar_bear_places#index"
  get "/students" => "students#trying"
  get 'polar_bear_places/index'
  resources :students
  get "/polarbearhousing" => "polar_bear_places#index"
  # root "PPLFinal-Project-2022#index"
  # get "PPL-Final-Project-2022" => "PPL-Final-Project-2022#index"
  get "/" => "students#index"
  post "/" => "polar_bear_places#handlePost"
  post "/students/new" => "polar_bear_places#handlePost"
  
  
  get "/ladd" => "polar_bear_places#ladd"
  get "/quinby" => "polar_bear_places#quinby"
  get "/baxter" => "polar_bear_places#baxter"
  get "/howell" => "polar_bear_places#howell"
  get "/boodyjohnson" => "polar_bear_places#boodyjohnson"
  get "/helmreich" => "polar_bear_places#helmreich"
  get "/reed" => "polar_bear_places#reed"
  get "/macmillan" => "polar_bear_places#macmillan"
  get "/burnett" => "polar_bear_places#burnett"

end
