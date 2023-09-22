Rails.application.routes.draw do
  root("pages#home")

  get("/projects", to: "pages#projects")
  get("/articles", to: "pages#articles")
  get("/experience", to: "pages#experience")
  get("/aboutme", to: "pages#aboutme")

  get("/create_project", to: "projects#new")
  post("/create_project", to: "projects#create")

  get("/secret_login", to: "sessions#new")
  post("/secret_login", to: "sessions#create")
  get("/secret_logout", to: "sessions#destroy")
  delete("/secret_logout", to: "sessions#destroy")

  resources(:users)
  resources(:projects)

end
