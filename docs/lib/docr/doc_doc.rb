$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', '..', '..', 'lib'))
require 'docr'

docr String do
  doc :initialize do
    description "Initializes a new documented method."

    example do
      String.new
    end
  end
end
