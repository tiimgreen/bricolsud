Rails.application.routes.draw do
  devise_for :users,
    path: '',
    path_names: { sign_in: 'admin', sign_out: 'logout' }

  root 'home#index'

  get 'contact',   to: 'contact#index',     as: :contact
  match 'contact', to: 'contact#send_mail', as: :submit_contact_form, via: :post

  get 'about', to: 'about#index', as: :about

  resources :settings, only: %i(index show edit update)

  resources :page_element_texts, path: 'page-element-texts', only: %i(edit show update)
  resources :page_element_links, path: 'page-element-links', only: %i(edit show update)

  # Services
  resources :services, only: %i(index show edit update) do
    resources :questions
  end

  get 'services/:service_id/questions', to: 'questions#index', as: :questions

  get 'services/:id/images',                            to: 'service_images#index',   as: :service_images
  get 'services/:id/images/new',                        to: 'service_images#new',     as: :new_service_image
  get 'services/:service_id/images/:image_id/edit',     to: 'service_images#edit',    as: :edit_service_image
  match 'services/:service_id/images/:image_id',        to: 'service_images#update',  via: :patch
  match 'services/:id/images',                          to: 'service_images#create',  as: :create_service_image, via: :post
  match 'services/:service_id/images/:image_id/delete', to: 'service_images#destroy', as: :delete_service_image, via: :delete

  get 'redirect-locale/fr', to: 'home#chose_fr_locale', as: :fr_locale_redirect
  get 'redirect-locale/en', to: 'home#chose_en_locale', as: :en_locale_redirect
end
