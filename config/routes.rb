Rails.application.routes.draw do
  root to: 'application#landing_page'

  get :error, to: 'application#'

  get 'imprint', to: 'application#'
  get 'donate_now', to: 'application#'
  get 'news', to: 'application#'
  resources 'projects'
  get 'donate_now', to: 'application#'
  get 'about_ghana', to: 'application#'
  get 'about_me', to: 'application#'
end
