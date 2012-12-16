module Docr
  class Group
    attr_accessor :klass, :docs

    def initialize(klass, &block)
      @klass = klass
      @docs  = []

      instance_eval(&block) if block
    end

    def doc(method_name, &block)
      docs << Docr::Doc.new(klass, method_name, &block)
    end
  end
end
