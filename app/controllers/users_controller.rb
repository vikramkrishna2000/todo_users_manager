class UsersController < ApplicationController
    def new
        render "users/new"
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
end


'    skip_before_action :verify_authenticity_token
    def index
        render plain: "User Details\n"+User.all.map {|user| user.to_display_content}.join("\n")
    end

    def create
        name = params[:name]
        email = params[:email]
        password = params[:password]
        new_user = User.create!(name: name,email: email,password: password)
        confirmation_text = "User is created with id #{new_user.id}"
        render plain: confirmation_text
    end
    
    def login
        email = params[:email]
        password = params[:password]
        identified_user = User.where( "email = ? AND password = ?", email, password ).to_a
        render plain: !identifier_user.empty?
    end
end'
