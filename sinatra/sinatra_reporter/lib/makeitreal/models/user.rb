module Makeitreal
  module Models
    class User < Person
      attr_accessor :role
      def initialize role, email, full_name
        @role = role
        super email, full_name
      end
    end
  end
end
