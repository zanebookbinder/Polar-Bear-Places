Rails.application.routes.draw do
  root "PPL-Final-Project-2022#index"
  get "PPL-Final-Project-2022" => "PPL-Final-Project-2022#index"
  get "/" => "PPL-Final-Project-2022#index"
  post "/" => "PPL-Final-Project-2022#enterRoom"
end
