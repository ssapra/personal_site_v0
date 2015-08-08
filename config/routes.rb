Website::Application.routes.draw do
  root to: "pages#index"
  resources :experiences, only: [:index, :show], param: :name
  resources :projects, only: [:index, :show], param: :name
end
