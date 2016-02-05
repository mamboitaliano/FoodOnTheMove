Rails.application.routes.draw do
  root to: "truck_finder#index"

  get "/search" => "truck_finder#index"

  get "/locate" => "twitter#get_tweets"
  
end
