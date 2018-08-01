class RegistrationsController < Devise::RegistrationsController
# load_and_authorize_resource
end
	private

	def sign_up_params
		params[:user].permit(:email, :username, :password, :password_confirmation, :role_ids)
	end
