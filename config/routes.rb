Rails.application.routes.draw do
  get "meetings" => "meetings#index"
  get "meetings/new" => "meetings#new"
  post "meetings" => "meetings#create"
end
