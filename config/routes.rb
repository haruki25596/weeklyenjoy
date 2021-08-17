Rails.application.routes.draw do
  
  devise_for :customers, controllers: {
        sessions: 'customer/sessions',
        registrations: 'customer/registrations'
      }
      
  devise_for :admins, controllers: {
        sessions: 'admin/sessions'
      }
  
  
  namespace :admin do
    root to: "homes#top"
    resources :items, only: [:index, :new, :create, :show, :edit, :update]
    resources :genres, only: [:index, :create, :edit, :update]
    resources :customers, only: [:index, :show, :edit, :update]
    resources :orders, only: [:index, :show, :update]
    resources :ordered_items, only: [:update]
  end
end
