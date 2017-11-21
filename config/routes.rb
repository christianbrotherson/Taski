Rails.application.routes.draw do

  

  get "about", to: "pages#about"
  get "contact", to: "pages#contact"
  get "error", to: "pages#error"

  get "blog", to: redirect("https://ckb-portfolio.herokuapp.com/blogs")

  resources :projects do
    resources :tasks, except: [:index], controller: 'projects/tasks'
  end

  root 'pages#home'

  get "*path", to: redirect("/error")
end
