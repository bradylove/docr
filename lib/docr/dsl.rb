module Docr
  module DSL
    # Example Usage
    #   docr Docr::DSL do
    #     doc :docr do
    #       description "Awesome method for creating top level method"
    #       path "/example/api/path"
    #       arguments
    #
    #       example do
    #         # Code Sample
    #       end
    #     end
    #   end
    def docr(klass, &block)
      Docr::Group.new(klass, &block)
    end
  end
end

extend Docr::DSL
Module.send(:include, Docr::DSL)
