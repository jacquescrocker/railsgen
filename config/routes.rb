RailsGenerate::Application.routes.draw do |map|
  devise_for :users

  resources :stacks

  resources :steps

  # define the coming soon page
  match "comingsoon" => "pages#comingsoon"

  # define the homepage
  match "preview" => "stacks#landing", :as => :home

  # put up splash pages
  if Rails.env.production?
    root :to => "pages#comingsoon"
  else
    root :to => "stacks#landing"
  end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
