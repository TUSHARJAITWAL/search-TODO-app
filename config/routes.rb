Rails.application.routes.draw do
  devise_for :admin_users
  resources :projects
  resources :courses
  get 'blogs/index'
  resources :blogs
  # get 'welcome/index'

 root 'welcome#index'
 resources :students


 get '/test' => 'students#test'


 

namespace :admin do
    resources :students 
  end

  # scope module: :admin do
  #   resources :students
  # end
end






















   
#  resources :students do 
#   member do
#     get :personal_details  # member routes
#   end

#   collection do
#     get :active            # collection routes
#   end
# end



#  get "/about" => 'welcome#about'

#  get 'welcome/about'



