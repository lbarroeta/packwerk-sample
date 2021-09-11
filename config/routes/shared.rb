# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    root 'devise/sessions#new'

    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  get '/dashboard', to: 'shared/dashboards#index'
end
