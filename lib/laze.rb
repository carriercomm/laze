$:.unshift File.dirname(__FILE__) # For use/testing when no gem is installed

# Gems
require 'rubygems'

# Core
require 'yaml'

# Standard library

# Third party

# Internal requires

module Laze
  def self.version
    yml = YAML.load(File.read(File.join(File.dirname(__FILE__), *%w[.. VERSION.yml])))
    "#{yml[:major]}.#{yml[:minor]}.#{yml[:patch]}"
  end
end