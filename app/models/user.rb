class User < ActiveRecord::Base
    def to_display_content
        "#{id}.  Name: #{name}  e-mail: #{email}"
    end
end