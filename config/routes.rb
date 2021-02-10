Rails.application.routes.draw do
  devise_for :users
  root to: "rooms#index"
  get 'messages/index'
  resources :users ,only:[:edit, :update]
  resources :rooms ,only:[:new, :create] do
    resources :rooms ,only:[:index, :create]
  end
end
