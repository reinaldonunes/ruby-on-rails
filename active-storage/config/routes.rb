Rails.application.routes.draw do
  root to: "buckets#index"
  resources :buckets do
    resources :file_uploads, only: [:new, :create, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
