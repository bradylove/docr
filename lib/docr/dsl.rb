module Docr
  module DSL
    # Example Usage
    #   docr Docr::DSL do
    #     doc :docr do
    #       description "Awesome method for creating top level method"
    #     end
    #   end
    def docr(klass)
      Docr::Group.new(klass){ yield }
    end
  end
end

extend Docr::DSL
Module.send(:include, Docr::DSL)
