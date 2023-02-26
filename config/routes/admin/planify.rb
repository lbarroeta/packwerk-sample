Rails.application.routes.draw do
  namespace :admin do
    namespace :planify do
      resources :customers
    end
  end
end