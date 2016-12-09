class Users::RegistrationsController < Devise::RegistrationsController
  before_action :configure_sign_up_params, only: [:create]
# before_action :configure_account_update_params, only: [:update]

# GET /resource/sign_up
  def new
    super
  end

# POST /resource
  def create
    super do
      #hname = :household_name

      if sign_up_params[:code] == ""
        
        puts "#{sign_up_params[:household_name]}" + "\n\n\n"
        if Household.exists?(name: sign_up_params[:household_name])  #@user.household.exists?
          
          move("Household Taken")
          break
        else
          resource.build_household(code: "#{rand(1000)}", name: sign_up_params[:household_name])
          resource.save



        end
      else
        if Household.exists?(name: sign_up_params[:household_name]) 
          
        
          house = Household.where(name: sign_up_params[:household_name]).take 
          if sign_up_params[:code] == house.code
            puts "\n\n\n\n\n HELLO"
            resource.build_household(name: sign_up_params[:household_name])

            resource.save


            #current_user.household_id = User.where(household_name: current_user.household.name).first.household_id
           
            
            #@user = User.new

          else
            
            move("Invalid Code\n\n\n\n\n\n")
            break
          end
        else
         
          move("household does not exist")
          break
        end
      end
    
    end
  end
  
  def move(sss)
    redirect_to new_user_registration_path
    puts sss
  end

# GET /resource/edit
# def edit
#   super
# end

# PUT /resource
# def update
#   super
# end

# DELETE /resource
# def destroy
#   super
# end

# GET /resource/cancel
# Forces the session data which is usually expired after sign
# in to be expired now. This is useful if the user wants to
# cancel oauth signing in/up in the middle of the process,
# removing all OAuth session data.
# def cancel
#   super
# end

  protected

# If you have extra params to permit, append them to the sanitizer.
  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:household_name])
    #params.require(:user).permit(:household, :code)
    
  end
  
  def sign_up_params
   params.require(:user).permit(:email, :password, :password_confirmation, :household_name, :code, :name)
  end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end