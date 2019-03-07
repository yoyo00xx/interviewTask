Rails.application.routes.draw do
  resource :guests
  get "guests/wait"
  get "guests/success"
end
