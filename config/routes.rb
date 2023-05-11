# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'shared/sessions#new'

  draw('admin/shared')
  draw(:shared)

  draw('features/dashboards/planify')

  match '*path' => redirect('/'), via: :get
end
