require 'skeleton-rails'
require 'redcarpet'

module HunkyDory
  class Engine < ::Rails::Engine
    isolate_namespace HunkyDory

    initializer :append_migrations do |app|
      unless app.root.to_s.match(root.to_s)
        config.paths['db/migrate'].expanded.each do |expand_path|
          app.config.paths['db/migrate'] << expand_path
        end
      end
    end

    initializer :append_routes, before: :load_config_initializers do |app|
      routes_file = Rails.root.join('config', 'routes.rb')

      unless File.read(routes_file).include? 'mount HunkyDory::Engine'
        app.routes.append do
          mount HunkyDory::Engine, at: '/changelog'
        end
      end
    end
  end
end
