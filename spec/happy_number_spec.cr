require "./spec_helper"

describe HappyNumber do
  describe "#happy?" do
    it "shows '7' as a happy number" do
      7_u8.happy?.should eq(true)
    end

    it "shows binary '7' as a happy number" do
      0b111_u8.happy?.should eq(true)
    end

    it "shows octal '13' as a happy number" do
      0o15_u8.happy?.should eq(true)
    end

    it "shows hex '13' as a happy number" do
      0xD_u8.happy?.should eq(true)
    end
  end

  describe "#unhappy?" do
    it "shows '1234' as an unhappy number" do
      1234_u64.unhappy?.should eq(true)
    end
  end

  describe "#sad?" do
    it "shows '1234' as a sad number" do
      1234_u64.sad?.should eq(true)
    end
  end
end
