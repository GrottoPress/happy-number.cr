require "./spec_helper"

describe HappyNumber do
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

  it "shows '1234' as an unhappy number" do
    1234_u64.unhappy?.should eq(true)
  end

  it "shows '1234' as a sad number" do
    1234_u64.sad?.should eq(true)
  end

  it "gets happy numbers from '1' to '100'" do
    (1_u128..100_u128).happy.should eq([
      1, 7, 10, 13, 19, 23, 28, 31, 32, 44, 49,
      68, 70, 79, 82, 86, 91, 94, 97, 100
    ])
  end

  it "gets unhappy numbers from '1' to '20'" do
    (1_u16..20_u16).unhappy.should eq([
      2, 3, 4, 5, 6, 8, 9, 11, 12, 14, 15, 16, 17, 18, 20
    ])
  end

  it "gets sad numbers from '1' to '20'" do
    (1_u16..20_u16).sad.should eq([
      2, 3, 4, 5, 6, 8, 9, 11, 12, 14, 15, 16, 17, 18, 20
    ])
  end
end
