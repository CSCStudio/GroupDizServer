Rails.application.routes.draw do

  # Rails api version without our gems, params sub_version is integer.
  namespace :api  do
    namespace :v0  do
      scope ":sub_version" do
        resources :topics
        resources :users, only: [:create, :show] do 
          collection do
            post :join_topic 
          end
        end
      end
    end
  end
end
