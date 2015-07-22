require "spec_helper"

describe MegaLotto do
  describe "#configure" do
    before :each do
      MegaLotto.configure do |config|
        config.drawing_count = 10
      end
    end

    it "resets the configuration" do
      MegaLotto.reset

      config = MegaLotto.configuration

      expect(config.drawing_count).to eq(6)
    end

    after :each do
      MegaLotto.reset
    end
  end

  describe ".reset" do
    before :each do
      MegaLotto.configure do |config|
        config.drawing_count = 10
      end
    end

    it "resets the configuration" do
      MegaLotto.reset

      config = MegaLotto.configuration

      expect(config.drawing_count).to eq(6)
    end
  end
end
