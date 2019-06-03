require "./spec_helper"

describe Range do
  describe "#happy" do
    it "gets happy numbers from '1' to '100'" do
      (1_u128..100_u128).happy.should eq([
        1, 7, 10, 13, 19, 23, 28, 31, 32, 44, 49,
        68, 70, 79, 82, 86, 91, 94, 97, 100
      ])
    end
  end

  describe "#unhappy" do
    it "gets unhappy numbers from '1' to '20'" do
      (1_u16..20_u16).unhappy.should eq([
        2, 3, 4, 5, 6, 8, 9, 11, 12, 14, 15, 16, 17, 18, 20
      ])
    end
  end

  describe "#sad" do
    it "gets sad numbers from '1' to '20'" do
      (1_u16..20_u16).sad.should eq([
        2, 3, 4, 5, 6, 8, 9, 11, 12, 14, 15, 16, 17, 18, 20
      ])
    end
  end
end
