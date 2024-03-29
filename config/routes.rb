Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api, format: :json do
    namespace :v1 do
      resources :projects do
        resources :tasks do
          collection do
            post :done
          end
        end
      end
    end
  end
end
