# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :planify do
    resources :customers
  end
end