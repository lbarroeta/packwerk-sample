# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'shared/sessions#new'

  draw('admin/planify')
  draw(:shared)

  match '*path' => redirect('/'), via: :get
end
