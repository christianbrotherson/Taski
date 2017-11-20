Rails.application.routes.draw do
  
  get "about", to: "pages#about"
  get "contact", to: "pages#contact"
  get "home", to: "pages#home"

  resources :projects
end
