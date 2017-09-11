class UsercController < ApplicationController
  
  #attr_accessor :users


  def index
  	#self.name="Alchemy"

  	@users = Userdb.all 

     if(!cookies[:user_id].blank?)
       @user_signed_in=Userdb.find(cookies[:user_id].to_i) 
     end


  end



  def new

  end



  def create
  
  #	byebug

  	puts('**********************')
	puts(params)
 
	Userdb.create(name:params["name"] , age:params["age"] , email:params["email"])
	

	puts('*************************************')

	#render html: 'userc/index.html.erb'

	redirect_to action: 'index'
  end


  def sign_in
    if(!cookies[:user_id].blank?)
      redirect_to action: 'index'
    end

  end

  def sign_out
    cookies.delete(:user_id) 
    redirect_to action: 'index'
  end

  def create_session
    user = Userdb.find_by(email: params[:email])
    
    if !user.nil?
      cookies[:user_id]=user.id 
     
      end
 redirect_to action: 'index'
  end



end
