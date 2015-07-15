Rails.application.routes.draw do
  devise_for :users,
    path: '',
    path_names: { sign_in: 'admin', sign_out: 'logout' }

  root 'home#index'

  get 'contact',   to: 'contact#index',     as: :contact
  match 'contact', to: 'contact#send_mail', as: :submit_contact_form, via: :post

  get 'about', to: 'about#index', as: :about
  get 'locale/:locale', to: 'locales#set', as: :set_locale

  # Settings
  get 'settings',          to: 'settings#index',  as: :settings
  get 'settings/:id/edit', to: 'settings#edit',   as: :edit_setting
  get 'settings/:id',      to: 'settings#show',   as: :setting
  match 'settings/:id',    to: 'settings#update', via: :patch

  # PageElementTexts
  get 'page-element-texts/:id/edit', to: 'page_element_texts#edit',   as: :edit_page_element_text
  get 'page-element-texts/:id',      to: 'page_element_texts#show',   as: :page_element_text
  match 'page-element-texts/:id',    to: 'page_element_texts#update', via: :patch

  # PageElementLinks
  get 'page-element-links/:id/edit', to: 'page_element_links#edit',   as: :edit_page_element_link
  get 'page-element-links/:id',      to: 'page_element_links#show',   as: :page_element_link
  match 'page-element-links/:id',    to: 'page_element_links#update', via: :patch

  # Services
  get 'services',          to: 'services#index', as: :services
  get 'services/:id',      to: 'services#show',  as: :service
  get 'services/:id/edit', to: 'services#edit',  as: :edit_service
  match 'services/:id',    to: 'services#update', via: :patch

  # Service Questions
  get 'services/:service_id/questions/:question_id',          to: 'questions#show',    as: :service_question
  get 'services/:id/questions',                               to: 'questions#index',   as: :questions
  get 'services/:id/questions/new',                           to: 'questions#new',     as: :new_question
  get 'services/:service_id/questions/:question_id/edit',     to: 'questions#edit',    as: :edit_question
  match 'services/:service_id/questions/:question_id',        to: 'questions#update',  via: :patch
  match 'services/:id/questions',                             to: 'questions#create',  as: :create_question, via: :post
  match 'services/:service_id/questions/:question_id/delete', to: 'questions#destroy', as: :delete_question, via: :delete

  get 'services/:id/images',                            to: 'service_images#index',   as: :service_images
  get 'services/:id/images/new',                        to: 'service_images#new',     as: :new_service_image
  get 'services/:service_id/images/:image_id/edit',     to: 'service_images#edit',    as: :edit_service_image
  match 'services/:service_id/images/:image_id',        to: 'service_images#update',  via: :patch
  match 'services/:id/images',                          to: 'service_images#create',  as: :create_service_image, via: :post
  match 'services/:service_id/images/:image_id/delete', to: 'service_images#destroy', as: :delete_service_image, via: :delete

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
