# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'dashboard#index'

  post 'upload_csv', to: 'dashboard#upload_csv'

  resources :deputies, only: %i[index show]
end
