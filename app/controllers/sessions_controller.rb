class SessionsController < ApplicationController
	def new
	end

	def create
		user = User.find_by_email(params[:session][:email])
		redirect_to user

		#render 'test'
	end

	def destroy
	end
end
