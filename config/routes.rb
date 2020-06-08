Rails.application.routes.draw do
  root 'home#index'

  # activeadmin:
  ActiveAdmin.routes(self)

  # rails_admin:
  mount RailsAdmin::Engine => '/rails_admin', as: 'rails_admin'

  # administrate:
  namespace :admin do
    resources :posts

    root to: 'posts#index'
  end
end
