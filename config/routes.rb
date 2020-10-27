Rails.application.routes.draw do
  get "meetings" => "meetings#index"
  get "meetings/new" => "meetings#new"
  post "meetings" => "meetings#create"
  get "meetings/:id/edit" => "meetings#edit"
  get "participants" => "participants#index"
  get "participants/new" => "participants#new"
  post "participants" => "participants#create"
  get "meetings/:id" => "meetings#show"
  get "participants/:id" => "participants#show"
end
