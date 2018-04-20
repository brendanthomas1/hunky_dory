module HunkyDory
  class ApplicationController < Hunky::ApplicationController
    protect_from_forgery with: :exception

    def flash_errors(model_with_errors)
      messages = model_with_errors.errors.map do |attribute, message|
        "#{attribute.capitalize} #{message}"
      end
      flash[:danger] = messages.join(', ')
    end
  end
end
