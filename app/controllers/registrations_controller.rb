class RegistrationsController < Devise::RegistrationsController
    private

    def sign_up_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
    
    def account_user_update
        params.require(:user).permit(:name, :email, :password, :password_confirmation, :current_password)
    end
end