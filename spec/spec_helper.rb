require 'active_support/core_ext/string/strip'

Dir[File.expand_path(File.join(File.dirname(__FILE__),"..", "lib","*.rb"))].each { |f| require f }
