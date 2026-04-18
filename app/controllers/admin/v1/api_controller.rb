module Admin::V1
  class ApiController < ApplicationController
    class ForbirdenAccess < StandardError; end
    include Authenticable
    include SimpleErrorRenderable
    self.simple_error_partial = 'shared/simple_error'

    rescue_from ForbirdenAccess do 
      render_error(message: 'Forbidden Access', status: :forbidden)
    end

    before_action :restrict_access_for_admin!

    private 

    def restrict_access_for_admin!
      raise ForbirdenAccess unless current_user.admin?
      return true if current_user.admin?
    end
  end
end
