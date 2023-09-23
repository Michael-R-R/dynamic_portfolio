Rails.application.routes.draw do
  root("pages#home")

  get("/projects", to: "pages#projects")
  get("/articles", to: "pages#articles")
  get("/experience", to: "pages#experience")
  get("/aboutme", to: "pages#aboutme")

  get("/create_project", to: "projects#new")
  post("/create_project", to: "projects#create")
  delete("/projects/:id/delete" => "projects#destroy", as: "delete_project")
  get("/projects/:id/delete", to: "projects#destroy")

  get("/create_article", to: "articles#new")
  post("/create_article", to: "articles#create")
  delete("/articles/:id/delete" => "articles#destroy", as: "delete_article")
  get("/articles/:id/delete" => "articles#destroy")

  get("/secret_login", to: "sessions#new")
  post("/secret_login", to: "sessions#create")
  get("/secret_logout", to: "sessions#destroy")
  delete("/secret_logout", to: "sessions#destroy")

  resources(:users)
  resources(:posts)
  resources(:projects)
  resources(:articles)

end
