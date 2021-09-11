Rails.application.routes.draw do
  draw(:shared)

  match '*path' => redirect('/'), via: :get
end
