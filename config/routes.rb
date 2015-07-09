Greenarea::Application.routes.draw do

  namespace :admin do
    resources :students
    resources :employees
    resources :cash_managements
    resources :paid_types
    resources :midday_managements
    resources :sections
    resources :pay_bands
    resources :admissions
    resources :religions
    resources :place_of_births
    resources :castes
    resources :standards
    resources :divisions
    resources :transports
    resources :finance_modes
    resources :natures
    resources :meals
    resources :daily_meals
    resources :monthly_records
    resources :fees_heads
    resources :dashboards
    resources :academic_years
    resources :fees_head_types
    resources :fees_head_recurrences

    resources :salary_receipts do
      member do
        get :print
      end
    end

    resources :expense_receipts do
      member do
        get :print
      end
    end

    resources :receipts do
      member do
        get :print
      end
    end
  end

  devise_for :users

  # You can have the root of your site routed with "root"
  devise_scope :user do
    authenticated :user do
      root 'home#index', as: :authenticated_root
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end

  resources :users, only: :show
end
