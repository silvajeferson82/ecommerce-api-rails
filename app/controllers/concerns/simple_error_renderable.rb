module SimpleErrorRenderable
  extend ActiveSupport::Concern

  included do 
    class_attribute :simple_error_partial, default: 'shared/simple_error'

    def render_error(message: nil, fields: nil, status: :unprocessable_content) 
      render partial: self.class.simple_error_partial, 
        formats: :json, 
        locals: { message: message, fields: fields }, 
        status: status
    end
  end
end