module Fizzy
  module Oss
    class ApplicationRecord < ActiveRecord::Base
      self.abstract_class = true
    end
  end
end
