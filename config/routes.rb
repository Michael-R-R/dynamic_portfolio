Rails.application.routes.draw do
  root("pages#home")

  get("/projects", to: "pages#projects")
  get("/articles", to: "pages#articles")
  get("/experience", to: "pages#experience")
  get("/aboutme", to: "pages#aboutme")

end
