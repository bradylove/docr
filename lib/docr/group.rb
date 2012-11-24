module Docr
  class Group
    attr_accessor :klass, :docs

    def initialize(klass)
      @klass = klass
      @docs  = []
    end

    def doc(method_name)
      docs << Docr::Doc.new(method_name) { yield }
    end
  end
end
