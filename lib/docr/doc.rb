module Docr
  class Doc
    attr_accessor :method_name, :description, :group

    def initialize(group, method_name, &block)
      @description = nil
      @group       = group
      @method_name = method_name

      instance_eval(&block) if block
    end

    def description(*args)
      if args.size > 0
        @description = args[0]
      else
        return @description
      end
    end

    def report
      puts description
    end
  end
end
