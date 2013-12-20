class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method: 'hhh'

  before_action :configure_permitted_parameters, if: :devise_controller?


  protected

  def configure_permitted_parameters

    

    devise_parameter_sanitizer.for(:sign_up) << {profile_attributes: [:name]}
    devise_parameter_sanitizer.for(:account_update) << {profile_attributes: [:name, :phone, :about]}
  end

  public    
    def hhh
      'HaHaHa'
    end

  private
    def user_signed_in?
      super || dealer_signed_in?
    end

    def user_current
      super || dealer_current
    end
end


# Helper method digunakan untuk memanggil method di view
# selain
#   =current_user.email if current_user
# bisa digunakan
#   =current_user.try(:email)
# =========
# untuk menampilkan html misal menggunakan ckeditor
#   bisa menggunakan html.save atau .raw
# =========
# Gunakan || kalau nilai sebelah kiri nil