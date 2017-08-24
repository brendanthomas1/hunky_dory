require 'rails/generators/base'

module HunkyDory
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path('../templates', __FILE__)

      def create_app_controller
        copy_file(
          'application_controller.rb',
          'app/controllers/hunky/application_controller.rb'
        )
      end
    end
  end
end
