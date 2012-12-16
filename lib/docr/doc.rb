module Docr
  class Doc
    attr_accessor :method_name, :description, :group, :example, :arguments, :path

    def initialize(group, method_name, &block)
      @example     = nil
      @description = nil
      @arguments   = nil
      @path        = nil
      @group       = group
      @method_name = method_name

      instance_eval(&block) if block

      post_initialize
    end

    def post_initialize
      render_output
    end

    def render_output
      puts "#{group.to_s}##{method_name}"
      puts "Description: #{description}"
      puts "Path:        #{path}" if path
      puts "Arguments:   #{arguments}" if arguments
      puts "Example:"
      puts example
      puts "\n"
    end

    def description(*args)
      if args.size > 0
        @description = args[0]
      else
        return @description
      end
    end

    def path(*args)
      if args.size > 0
        @path = args[0]
      else
        return @path
      end
    end

    def arguments(args={})
      if args.size > 0
        @arguments = args
      else
        return @arguments
      end
    end

    def example(&block)
      if block
        @example = format_example(&block)
      else
        return @example
      end
    end

    def format_example(&block)
      source = block.source.split("\n")
      source.shift
      source.pop

      source.join("\n")
    end
  end
end
