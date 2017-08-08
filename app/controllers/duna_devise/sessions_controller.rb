# frozen_string_literal: true
# pretizeni Devise controlleru
class DunaDevise::SessionsController < Devise::SessionsController
  before_filter :set_csrf_headers, only: [:create, :destroy]
  protect_from_forgery except: :create

  # GET /resource/sign_in
  def new
    super
  end

  # POST /resource/sign_in
  def create
    super

    # resour = warden.authenticate!(auth_options)
    # set_flash_message!(:notice, :signed_in)

    # yield resource if block_given?
    # respond_with resource, location: after_sign_in_path_for(resource)
    # resour = User.authenticate(params[:login], params[:password])
    if resource
      if Aplikace.prihlaseni_povoleno? || user.admin?
        sign_in(:user, resource)
        # session[:user_id] = user.id
        # redirect_to_target_or_default current_user, :notice => "Logged in successfully."
        flash[:notice] = " Je čas úřadovat! Milosti vítejte ve hře."
      else
        flash[:alert] = "Přihlašování dočasně zakázáno."
      end
    else
#      flash.now[:alert] = "Invalid login or password."
       flash[:alert] = "Nesprávná kombinace jména a hesla"
    end
    # redirect_to root_url
  end

  # DELETE /resource/sign_out
  def destroy
    super
  end

  protected

  def set_csrf_headers
    cookies['XSRF-TOKEN'] = form_authenticity_token if protect_against_forgery?
  end
end
