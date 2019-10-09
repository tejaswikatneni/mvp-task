class ApplicationController < ActionController::API
	
	def check_authentication
        authenticate!(request.headers["Auth-Token"])
    end
                
    def authenticate!(auth_token)
        @user = User.where(authentication_token: auth_token).last
        if !@user.present? && !auth_token.present?
            json_message = {message: "401 Unauthorized.", status: "Failure"}
            render json: json_message
        end
    end

    def current_user
        @user
    end
end
