module Fizzy
  module Oss
    module SignupExtensions
      def create_identity
        if User.none?
          super
        else
          false
        end
      end
    end
  end
end