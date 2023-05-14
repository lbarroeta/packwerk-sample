# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :admin do
    namespace :shared do
      resources :mapbox, only: [] do
        collection do
          get :geocoding
        end
      end
    end
  end
end
