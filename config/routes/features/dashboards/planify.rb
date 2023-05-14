# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :dashboards do
    namespace :planify do
      resources :customers do
        resources :customer_addresses, except: %i[index show]
        resources :customer_contacts, except: %i[index show]
        resources :customer_users, except: :show
      end
    end
  end
end
