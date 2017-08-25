class RegistrationsController < Devise::RegistrationsController
  private
  def after_registration_path_for(resource)
    '/home/confirmation.html'
  end
end
