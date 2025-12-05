module Fizzy
  module Oss
    class Engine < ::Rails::Engine
      isolate_namespace Fizzy::Oss
    end
  end
end
