Rails.application.routes.draw do
  get 'log_in/home'
  get 'log_in/help'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'log_in#home'
end
