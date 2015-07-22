module MegaLotto
  class HolidayDrawing
    include MegaLotto::Jackpot

    def draw
      "This drawing is holiday-worth!"
    end

    # def jackpot
    #   puts "You've won the big one!"
    # end
  end
end