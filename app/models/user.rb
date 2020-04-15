class User < ApplicationRecord
    has_secure_password 
    has_many :todos

    validates_presence_of :first_name, message: "This field is complusory: First name"
    validates_presence_of :email, message: "This field is complusory: Email - Id"
  
    def to_pleasant_string
      "#{id}. #{name} - #{email} (#{password})"
    end
end