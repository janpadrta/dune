# frozen_string_literal: true
# pretizeni Devise controlleru
class DunaDevise::RegistrationsController < Devise::RegistrationsController

  # GET /resource/sign_up
  def new
    redirect_to :root, notice: 'Registrace není povolena.'
  end

  # POST /resource
  def create
    redirect_to :root, notice: 'Registrace není povolena.'
  end

  # GET /resource/edit
  def edit
    super
  end

  # PUT /resource
  # We need to use a copy of the resource because we don't want to change
  # the current user in place.
  def update
    super
  end

  # DELETE /resource
  def destroy
    super
  end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  def cancel
    redirect_to :root, notice: 'Rušení účtu není povoleno.'
  end
end
