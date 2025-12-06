module Fizzy
  module Oss
    class Engine < ::Rails::Engine
      isolate_namespace Fizzy::Oss

      initializer "fizzy.oss.mount", after: :load_config_initializers do |app|
        app.routes.prepend do
          mount Fizzy::Oss::Engine => "/", as: "oss"
        end
      end

      config.to_prepare do
        if defined?(SignupsController)
          SignupsController.class_eval do
            before_action :ensure_user_exists, prepend: true

            private
            def ensure_user_exists
              redirect_to new_session_url, alert: "Ask your administrator to create an account." unless User.none?
            end
          end
        end
      end

      config.to_prepare do
        Signup.prepend Fizzy::Oss::SignupExtensions
      end
    end
  end
end