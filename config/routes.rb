Rails.application.routes.draw do
  namespace 'api', defaults: { format: 'json' } do
    namespace 'v1' do
      get 'dashboard', to: 'customer_records#index'
      post 'new_record', to: 'customer_records#create'
    end
  end
  root 'static#index'
end
