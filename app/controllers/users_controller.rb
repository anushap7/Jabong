class UsersController < ApplicationController
  respond_to :html, :js

 impressionist :unique => [:session_hash]
  def new
    @user = User.new
  end
  
  # def show
   
  #   @user = User.find(params[:id])
  #   impressionist(@user)
  #  end

   def index

     @user = current_user
     impressionist(@user)

   end
   


  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to articles_path, :notice => "Signed up!"
    else
      render "new"
    end
  end
  # def after_create(user)
  #   Counter.find_by_name("user_count").increment
  # end
  
  private
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation, :phonenumber, :city, :state)
    end

end