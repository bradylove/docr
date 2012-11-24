module Docr
  class Doc
    attr_accessor :method_name, :description

    def initialize(method_name)
      @description = nil
      @method_name = method_name

      yield
    end
  end
end
