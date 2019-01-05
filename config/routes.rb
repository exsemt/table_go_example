# frozen_string_literal: true

TableGoExample::Application.routes.draw do
  root 'root#index'

  resources :books
end
