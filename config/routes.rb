Rails.application.routes.draw do
  # resources :birds, only: [:index, :show, :create, :update, :destroy] #Full CRUD. Can be replaced by...
  resources :birds

  patch "/birds/:id/like", to: "birds#increment_likes"
end
