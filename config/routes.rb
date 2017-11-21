Rails.application.routes.draw do

  get 'tasks/show'

  get 'tasks/new'

  get 'tasks/edit'

  get "about", to: "pages#about"
  get "contact", to: "pages#contact"
  get "error", to: "pages#error"

  get "blog", to: redirect("https://ckb-portfolio.herokuapp.com/blogs")

  resources :projects

  root 'pages#home'

  get "*path", to: redirect("/error")
end
