Rails.application.routes.draw do
  # Set the root route for your application


  # Define authentication routes for users using Devise
  devise_for :users

  # Define routes for authenticated users
  authenticated :user do
    # You can nest the students resource inside a namespace if needed
    # Example with namespace:
    # namespace :admin do
    #   resources :students
    # end
    resources :students
  end
end