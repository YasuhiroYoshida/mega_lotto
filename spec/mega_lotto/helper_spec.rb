require "spec_helper"
require "mega_lotto/helper"

class FakeView
  include MegaLotto::Helper
end

describe FakeView do
  describe "#mega_lotto_drawing" do
    it "delegate to MegaLotto::Drawing#draw" do
      drawing = double("drawing")
      MegaLotto::Drawing.stub(:new).and_return(drawing)
      expect(drawing).to receive(:draw)
      FakeView.new.mega_lotto_drawing
    end
  end
end