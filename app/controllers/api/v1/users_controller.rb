class Api::V1::UsersController < ApplicationController

	before_action :check_authentication, only: [:sign_out]

	def sign_in
		user = User.where(email: params["user"]["email"]).last
		if user.present? && user.valid_password?(params[:user][:password])
			user.create_authentication_token!
			json_message = {message: "Signed in successfully.", authentication_token: user.authentication_token, status: "Success"}
			render json: json_message
		else
			json_message = {message: "Invalid Email or Password.", status: "Failure"}
			render json: json_message
		end
	end

	def sign_out
		@user.create_authentication_token!
    	{ message: "Signed out successfully.", status: "Success" }

	end
end
