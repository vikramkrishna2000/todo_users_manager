class UsersController < ApplicationController

    skip_before_action :ensure_user_logged_in

    def new
      render "new"
    end
  
    def index
      render plain: User.all.map { |user| user.to_pleasant_string }.join("\n")
    end
  
    def show
      id = params[:id]
      user = User.find(id)
      render plain: user.to_pleasant_string
    end
  
    def create
      user = User.new(
        first_name: params[:first_name],
        last_name: params[:last_name],
        email: params[:email],
        password: params[:password],
      )
      if user.valid?
        user.save
        session[:current_user_id] = user.id
        redirect_to "/"
      else
        redirect_to new_user_path
        flash[:errors] = user.errors
      end
    end
  
    def login
      render plain: User.where(email: params[:email], password: params[:password]).exists?
    end
end
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
    ' skip_before_action :ensure_user_logged_in
   
    def new
        render "users/new"
    end

    def index
        render plain: User.all.map { |user| user.to_pleasant_string }.join("\n")
    end

    def create
        User.create!(
            first_name: params[:first_name],
            last_name: params[:last_name],
            email: params[:email],
            password: params[:password],
        )
        redirect_to "/"
    end
end'


