module MegaLotto
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../templates", __FILE__)

      def create_configuration
        template "mega_lotto.rb", "config/initializers/mega_lotto.rb"
      end
    end
  end
end