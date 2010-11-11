module ActionWebService
  module Generators
    class WebServiceGenerator < Rails::Generators::NamedBase
      argument :actions, :type => :array, :default => [], :banner => "action action"

      source_root File.expand_path("../templates", __FILE__)

      desc 'The web service generator creates the controller and API definition for a web service'

      def generate_controller
        template 'controller.rb', File.join('app/controllers', class_path, "#{file_name}_controller.rb")
      end

      def generate_api
        template 'api_definition.rb', File.join('app/services', class_path, "#{file_name}_api.rb")
      end

      hook_for :test_framework, :as => :controller
    end
  end
end
