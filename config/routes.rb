Rails.application.routes.draw do
  root("pages#home")

  get("/projects", to: "pages#projects")
  get("/articles", to: "pages#articles")
  get("/experience", to: "pages#experience")
  get("/aboutme", to: "pages#aboutme")

  get("/secret_login", to: "sessions#new")
  post("/secret_login", to: "sessions#create")
  delete("/secret_logout", to: "sessions#destroy")

  resources(:users)

end
