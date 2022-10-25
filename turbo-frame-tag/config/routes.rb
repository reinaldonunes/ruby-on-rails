Rails.application.routes.draw do
  root "people#index"

  get "/awards", to: "people#awards"
  get "/credits", to: "people#credits"
end
  