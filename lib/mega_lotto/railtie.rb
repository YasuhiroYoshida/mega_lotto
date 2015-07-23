require 'rails'
require 'mega_lotto/helper'

module MegaLotto
  class Railtie < Rails::Railtie
    initializer "mega_lotto.action_view" do
      ActiveSupport.on_load(:action_view) do
        include MegaLotto::Helper
      end
    end
  end
end
