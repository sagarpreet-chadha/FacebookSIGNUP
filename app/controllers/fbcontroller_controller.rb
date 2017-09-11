class FbcontrollerController < ApplicationController
  def index

  end

  def signup
  	puts("********************************")
  #	byebug 

  	Fbuser.create(
  		firstname: params["firstname"] ,
  		lastname: params["lastname"] ,
  		email: params["email"] ,
  		password: params["password"] ,
  		gender: params["gender"]
  		)

  	redirect_to action: 'showallusers'

  end

  def signin

  	
  	@temp=Fbuser.find_by(email: params["emailfirst"]) 

  	#byebug

  #	if @temp.nil?
  #		redirect_to action: 'index'
  #	end

  	#if @temp.nil?==false && @temp.password==params["passwordfirst"]
  		redirect_to action: 'showallusers'
  	#else
  	#	redirect_to action: 'index'
  	#end
  end

  def showallusers
  	@all=Fbuser.all 

  end

  def delete

  	@p=Fbuser.find(params[:id].to_i) 
  	@p.destroy 
  	redirect_to action: 'showallusers'
  end

end
