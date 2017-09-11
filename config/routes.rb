Rails.application.routes.draw do
  
  root 'userc#index'


  get 'fbcontroller/index'

  get 'posts' => "posts#index" 
  get 'posts/new' => "posts#new"
  post 'posts' => "posts#create"
  get 'posts/:id' => "posts#update"
  delete 'posts/:id' => "posts#delete"
  patch 'posts/:id' => "posts#edit"


  get 'userc/sign_in' => "userc#sign_in"
  post 'userc/create_session' => "userc#create_session" , as: :create_session
    delete 'userc/sign_out' => "userc#sign_out" , as: :user_sign_out
  get 'userc/index' => "userc#index"
  get 'userc/new'  => "userc#new"
  post 'userc/create' => "userc#create"

  get "application/helloworld" 




  get 'fbcontroller' => "fbcontroller#index" 
  post 'fbcontroller/' => "fbcontroller#signup" 
   post 'fbcontroller/signin/' => "fbcontroller#signin" 
  get 'fbcontroller/showallusers' => "fbcontroller#showallusers" 
  delete 'fbcontroller/:id' => "fbcontroller#delete"

end

