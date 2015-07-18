module MegaLotto
  class Drawing
    def draw
      5.times.map { single_draw }
    end

    def single_draw
      rand(0...60)
    end
  end
end