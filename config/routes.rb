Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace:api do
    namespace:v1 do
      resources :questions
        resources :answers
      get 'new_questions', to: 'questions#get_new'
    end
  end
end
