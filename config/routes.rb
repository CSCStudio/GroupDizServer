Rails.application.routes.draw do

  # Rails api version without our gems, params sub_version is integer.
  namespace :api  do
    namespace :v0  do
      scope ":sub_version" do
        resources :topics
      end
    end
  end
end
