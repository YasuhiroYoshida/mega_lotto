require "mega_lotto"

namespace :mega_lotto do
  desc "Generate a random lottery drawing"
  task :draw do
    puts MegaLotto::Drawing.new.draw
  end
end