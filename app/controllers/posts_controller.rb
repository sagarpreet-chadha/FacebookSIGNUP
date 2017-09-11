class PostsController < ApplicationController
  
  def index
  	@posts = Postsdb.all 
  end


  def new
  	@post=Postsdb.new 

  end

  def create
  	Postsdb.create(
  		title: params[:postsdb][:title] ,
  		content: params[:postsdb][:content]
  		)

  	redirect_to action: 'index' 
  end

  def update

  	@p=Postsdb.find(params[:id].to_i) 
  end

  def edit
  		@p=Postsdb.find(params[:id].to_i) 
  		
  		@p.update(title: params[:postsdb][:title] ,
  		content: params[:postsdb][:content])

  		redirect_to action: 'index' 
  end

  def delete
  	@p=Postsdb.find(params[:id].to_i) 
  	@p.destroy 
  	redirect_to action: 'index'
  end

end
