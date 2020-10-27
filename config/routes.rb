Rails.application.routes.draw do
  get "meetings" => "meetings#index"
  get "meetings/new" => "meetings#new"
  post "meetings" => "meetings#create"
  get "participants" => "participants#index"
  get "participants/new" => "participants#new"
  post "participants" => "participants#create"
end
