Rails.application.routes.draw do
  # activeadmin:
  ActiveAdmin.routes(self)

  # rails_admin:
  mount RailsAdmin::Engine => '/rails_admin', as: 'rails_admin'


  # administrate:
  root 'admin/posts#index'

  namespace :admin do
    resources :posts

    root to: 'posts#index'
  end
end
