$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', '..', '..', 'lib'))
require 'docr'

docr String do
  doc :initialize do
    description "Initializes a new documented method."

    example do
      String.new
    end
  end

  doc :to_s do
    description "Returns the objects value as a string."
    arguments   string_name: "Gives the string an optional name"

    example do
      string = "Some String"
      puts string.to_s
    end
  end
end
