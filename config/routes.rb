# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  root to: 'logs#index'

  resources :reports, only: [:index]
  get '/reports/past_week', to: 'reports#past_week'
  get '/reports/past_two_weeks', to: 'reports#past_two_weeks'

  resources :exercises
  resources :pains
  resources :body_parts

  resources :logs, only: [:index]
  resources :exercise_logs
  resources :pain_logs
  resources :pt_sessions

  namespace :admin do
    resources :users, only: [:index, :show]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
