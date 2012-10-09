module SessionsHelper
	
	def sign_in(user)
      #puts "Sign In called"		
	  cookies.permanent[:remember_token] = user.remember_token
	  self.current_user = user
	end

	def signed_in?
	  #puts "Current User #{current_user}"	
	  !current_user.nil?	
	end

	def current_user=(user)
	  #puts "Setting current user as #{current_user}"	
	  @current_user = user	
	end

	def current_user
	  #puts "Sus User [#{cookies[:remember_token]}]"
      #sus_user = User.find_by_remember_token(cookies[:remember_token])
      #puts "Sus User #{sus_user.name}"	
	  @current_user ||= User.find_by_remember_token(cookies[:remember_token])		
	end

    def sign_out
    #puts "Sign out called"
      self.current_user = nil
      cookies.delete(:remember_token)	
    end
end
