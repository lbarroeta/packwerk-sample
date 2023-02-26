# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'shared/sessions#new'

  draw(:planify)
  draw(:shared)

  match '*path' => redirect('/'), via: :get
end
